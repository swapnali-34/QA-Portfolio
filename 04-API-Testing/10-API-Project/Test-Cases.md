# API Test Cases

## Project: User Management API

**Base URL:** `https://jsonplaceholder.typicode.com`

Detailed test cases derived from [Test-Scenarios.md](./Test-Scenarios.md).

---

## Test Cases

| Test Case ID | Scenario | Method | Endpoint | Test Data | Expected Result |
|---|---|---|---|---|---|
| TC-API-001 | Retrieve all users successfully | GET | `/users` | None | HTTP `200`; JSON array of users. |
| TC-API-002 | Retrieve an existing user by ID | GET | `/users/1` | `id = 1` | HTTP `200`; returned ID matches requested ID. |
| TC-API-003 | Retrieve another existing user | GET | `/users/5` | `id = 5` | HTTP `200`; returned ID is `5`, required fields present. |
| TC-API-004 | Request a user that does not exist | GET | `/users/9999` | `id = 9999` | HTTP `404`; no valid user object returned. |
| TC-API-005 | Validate required fields in a user response | GET | `/users/1` | None | Response contains `id`, `name`, `username`, `email`. |
| TC-API-006 | Validate user ID data type | GET | `/users/1` | None | Returned `id` is numeric. |
| TC-API-007 | Create a user with valid information | POST | `/users` | Valid name/username/email | HTTP `201`; response contains ID + submitted values. |
| TC-API-008 | Create a user without the name field | POST | `/users` | `username`, `email` only | Evaluated against the validation contract — no status assumed where undefined. |
| TC-API-009 | Create a user without the email field | POST | `/users` | `name`, `username` only | Same approach as TC-API-008. |
| TC-API-010 | Submit an incorrectly formatted email | POST | `/users` | `email = "invalid-email"` | Evaluated against the contract's email validation rule. |
| TC-API-011 | Replace user information using PUT | PUT | `/users/1` | Updated name/username/email | HTTP `200`; updated values returned, correct user ID. |
| TC-API-012 | Partially update a user's email | PATCH | `/users/1` | `email = "updated@example.com"` | HTTP `200`; email updated, other fields unchanged (per contract). |
| TC-API-013 | Delete an existing user | DELETE | `/users/1` | `id = 1` | Contract-defined success response (HTTP `200` accepted here). |
| TC-API-014 | Submit a non-numeric user ID | GET | `/users/abc` | `id = "abc"` | Evaluated against ID-format rules — no status assumed without a contract. |
| TC-API-015 | Validate response time for users endpoint | GET | `/users` | None | Completes within the defined response-time requirement. |

---

## Sample Request/Response Data

**TC-API-007 — Create User**
```json
{ "name": "Swapnali QA", "username": "swapnali_qa", "email": "swapnali@example.com" }
```
Checks: status `201` · ID present and numeric · submitted `name`/`username`/`email` all echoed back.

**TC-API-011 — PUT Update**
```json
{ "name": "Swapnali QA Updated", "username": "swapnali_updated", "email": "swapnali.updated@example.com" }
```
Checks: status `200` · correct user ID retained · all three updated fields returned.

**TC-API-012 — PATCH Email**
```json
{ "email": "updated@example.com" }
```
Checks: status `200` · email updated · other fields unchanged **if required by the contract**.

**TC-API-008/009/010 — Negative Creation Cases**
Missing `name`, missing `email`, and an invalid email format are all submitted the same way: send the request, record the actual response, and compare it to the contract — **never assume** a status code (`400`, `422`, etc.) the specification doesn't define.

---

## Execution & Validation Approach

For every test case, check more than the status code: response format, structure, required fields, data types, requested-vs-returned ID, error behavior, response time, and contract compliance.

**Key principle:**

```text
HTTP 200 OK  ≠  Test Passed
```

Example: if the contract requires `"id": 1` (a number) but the API returns `"id": "1"` (a string), the status is successful but the test still **FAILS** on data type. Conversely, an HTTP `404` on a deliberately non-existent user is a **PASS** when that's the expected behavior.

**Rule for undefined behavior:** where the contract doesn't specify an expected result, don't invent one.

```text
Requirement → API Contract → Actual Response → Validation → PASS / FAIL / BLOCKED
```
