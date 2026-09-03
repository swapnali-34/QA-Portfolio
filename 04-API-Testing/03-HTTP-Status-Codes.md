# HTTP Status Codes

HTTP status codes indicate the result of an API request.

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

---

### 204 No Content

Request was successful but the response contains no body.

Common example:

```text
DELETE /users/1
```

---

## 4xx — Client Errors

### 400 Bad Request

The server cannot process the request because the request is invalid.

### 401 Unauthorized

Authentication is required or authentication credentials are invalid.

### 403 Forbidden

The client is authenticated but does not have permission to access the resource.

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

---

## 5xx — Server Errors

### 500 Internal Server Error

An unexpected error occurred on the server.

---

## QA Perspective

A status code should always be validated against the expected behavior.

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

The test passes when the actual behavior matches the expected behavior.

---

## Summary

| Status | Meaning |
|---|---|
| 200 | OK |
| 201 | Created |
| 204 | No Content |
| 400 | Bad Request |
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Internal Server Error |
