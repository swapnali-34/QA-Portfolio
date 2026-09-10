# API Validation

API validation confirms a response matches the expected contract — not just
that a request "worked." Every check below has a working Postman script in
[08-API-Test-Scripts.md](./08-API-Test-Scripts.md); this file is the
checklist view of the same validations.

---

## Validation Checklist

- [x] **Status code** — matches the expected code for this scenario (not just "any 2xx")
- [x] **Required fields** — e.g. `id`, `name`, `email` exist in the response
- [x] **Exact values** — a specific field equals an expected value (e.g. `id` equals the requested ID)
- [x] **Data types** — `id` is a `number`, not a numeric-looking string
- [x] **Headers** — e.g. `Content-Type` includes `application/json`
- [x] **Array structure** — response is an array where expected
- [x] **Record count** — array has the expected number of items
- [x] **Every-record validation** — a rule (e.g. `userId = 2`) holds for *every* item, not just the first
- [x] **Negative scenarios** — invalid input is handled as the contract defines (e.g. `GET /users/9999` → `404`)
- [x] **Dynamic values / chaining** — a value extracted from one response (e.g. `createdUserId`) is reused correctly in a later request

---

## Key Principle

```text
Status Code = 200
        ≠
Test Passed
```

A `200 OK` only means the server responded successfully — it says nothing
about whether the *data* is correct, complete, or the right type. Every
check above still needs to run independently of the status code.

Similarly, a `404` on a deliberately-invalid request is a **PASS**, not a
failure — the result is judged against what the contract *expects*, not
against "did it succeed."
