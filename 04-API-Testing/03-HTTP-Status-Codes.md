# HTTP Status Codes

HTTP status codes indicate the result of an API request — but for QA, a
status code is really a **starting point for what to test next**, not the
final answer. A code confirms roughly what happened; it doesn't confirm
the response is actually correct.

---

## 2xx — Success

### 200 OK

Request was successfully processed.

Example:

```text
GET /users/1
```

Expected:

```text
200 OK
```

**What to test:** Don't stop at the code — check the response body isn't
empty, matches the expected structure, and every field has the correct
data type.

---

### 201 Created

A new resource was successfully created.

Example:

```text
POST /users
```

Expected:

```text
201 Created
```

**What to test:** Confirm the response includes the newly created
resource's ID, and that a follow-up `GET` on that ID actually returns it —
a `201` alone doesn't prove the resource was really persisted.

---

### 202 Accepted

The request has been accepted for processing, but processing isn't
complete yet (common for asynchronous operations, like a background job).

Example:

```text
POST /reports/generate
```

Expected:

```text
202 Accepted
```

**What to test:** Verify there's a way to check the job's actual status
afterward (a status endpoint or callback) — a `202` only promises the
request was received, not that the work succeeded.

---

### 204 No Content

Request was successful but the response contains no body.

Common example:

```text
DELETE /users/1
```

**What to test:** Confirm the body really is empty (a non-empty body here
would break the contract), and separately verify the resource is actually
gone — e.g. a follow-up `GET` on the same ID should now return `404`.

---

### 206 Partial Content

The server is returning only part of the resource, usually in response to
a range request (common in file downloads or paginated data).

Example:

```text
GET /files/report.pdf
Range: bytes=0-1023
```

Expected:

```text
206 Partial Content
```

**What to test:** Check the returned range matches what was requested,
and test the edges — the very first byte, the very last byte, and a range
that goes slightly beyond what exists.

---

## 3xx — Redirection

### 301 Moved Permanently

The requested resource has permanently moved to a new URL.

**What to test:** Confirm the redirect actually lands on the correct final
URL, and check whether the response is cached the way it's supposed to be
— a permanent redirect is often cached by browsers/clients, which can hide
a later change if the redirect target is updated.

---

### 302 Found (Temporary Redirect)

The resource is temporarily available at a different URL, but the
original URL should still be used for future requests.

**What to test:** Confirm the client is *not* caching this redirect the
way it would a `301` — a common bug is treating a temporary redirect as
permanent.

---

### 304 Not Modified

Tells the client its cached copy of the resource is still valid, so no
new data is sent.

Example:

```text
GET /users/1
If-None-Match: "abc123"
```

Expected:

```text
304 Not Modified
```

**What to test:** Confirm the response body is genuinely empty, and that
the caching header (e.g. `ETag`) matches what was sent — this is easy to
get subtly wrong.

---

## 4xx — Client Errors

### 400 Bad Request

The server cannot process the request because the request is invalid.

**What to test:** Send a deliberately malformed payload and confirm the
error message actually explains what's wrong — a vague `400` with no
detail is a poor experience even if technically correct.

---

### 401 Unauthorized

Authentication is required or authentication credentials are invalid.

**What to test:** Try the request with no token, an invalid token, and an
expired token — each should return `401`, but confirm the error message
doesn't leak whether the account itself exists (a security concern, not
just a functional one).

---

### 403 Forbidden

The client is authenticated but does not have permission to access the
resource.

**What to test:** Confirm the difference between `401` and `403` is
respected — a valid but under-permissioned user should get `403`, not
`401`, since they *are* authenticated, just not authorized.

---

### 404 Not Found

The requested resource does not exist.

Example:

```text
GET /users/9999
```

Expected:

```text
404 Not Found
```

**What to test:** Try both a non-existent ID and a deleted ID — both
should return `404`, and the response shouldn't accidentally reveal
whether the ID once existed.

---

### 405 Method Not Allowed

The HTTP method used isn't supported for this endpoint.

Example:

```text
DELETE /users
```

(if bulk-deleting all users isn't a supported operation)

**What to test:** Confirm the response includes an `Allow` header listing
which methods *are* supported — a good API tells you what you can do, not
just what you can't.

---

### 409 Conflict

The request conflicts with the current state of the resource (e.g.
creating a record that already exists, or a version mismatch on update).

**What to test:** Fire two conflicting requests close together (e.g. two
attempts to create the same unique record) and confirm only one succeeds
— this is a good way to catch race conditions, not just single-request bugs.

---

### 422 Unprocessable Entity

The request is well-formed (valid JSON, correct syntax) but fails a
business rule.

Example:

```json
{ "email": "not-an-email" }
```

Expected:

```text
422 Unprocessable Entity
```

**What to test:** This is the code to watch for the difference between
"broken request" (`400`) and "valid request, invalid business data"
(`422`) — confirm the API distinguishes between the two rather than
lumping both under `400`.

---

### 429 Too Many Requests

The client has sent too many requests in a given time window (rate
limiting).

**What to test:** Confirm the response includes a `Retry-After` header
telling the client when it's safe to try again — and if you can trigger
it safely in a test environment, confirm the limit resets correctly after
that window.

---

## 5xx — Server Errors

### 500 Internal Server Error

An unexpected error occurred on the server.

**What to test:** Confirm the error response doesn't leak internal details
(stack traces, database errors) to the client — a `500` should fail
gracefully, not expose implementation details.

---

### 502 Bad Gateway

The server, acting as a gateway, received an invalid response from an
upstream server it depends on.

**What to test:** If you can simulate the upstream dependency being down
or slow, confirm the client-facing error is still a clean, understandable
message rather than a raw pass-through of the upstream failure.

---

### 503 Service Unavailable

The server is temporarily unable to handle the request (overloaded or
down for maintenance).

**What to test:** Confirm a `Retry-After` header is present where
applicable, and that the system recovers cleanly once the underlying
issue clears — a `503` shouldn't require a manual restart to resolve.

---

### 504 Gateway Timeout

The server, acting as a gateway, didn't receive a timely response from an
upstream server.

**What to test:** Check whether the client has its own reasonable timeout
configured — if the client waits indefinitely for a response that will
never come, that's a bug on the client side, not just the server's.

---

## QA Perspective

A status code should always be validated against the expected behavior —
never assumed as correct just because it's a "success" code, and never
assumed as a failure just because it's an error code.

For example:

```text
GET /users/1
Expected = 200
Actual = 200
PASS
```

For negative testing:

```text
GET /users/9999
Expected = 404
Actual = 404
PASS
```

Therefore:

> A 4xx status code is not automatically a test failure.

The test passes when the actual behavior matches the expected behavior —
and as the "What to Test" notes above show, the code itself is usually
just the first thing to check, not the last.

---

## Summary

| Status | Meaning |
|---|---|
| 200 | OK |
| 201 | Created |
| 202 | Accepted |
| 204 | No Content |
| 206 | Partial Content |
| 301 | Moved Permanently |
| 302 | Found (Temporary Redirect) |
| 304 | Not Modified |
| 400 | Bad Request |
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |
| 405 | Method Not Allowed |
| 409 | Conflict |
| 422 | Unprocessable Entity |
| 429 | Too Many Requests |
| 500 | Internal Server Error |
| 502 | Bad Gateway |
| 503 | Service Unavailable |
| 504 | Gateway Timeout |
