# API Test Cases

## Project: User Management API

**Base URL:** `https://jsonplaceholder.typicode.com`

This document contains detailed test cases derived from the API test scenarios and defined project requirements.

---

## Test Cases

| Test Case ID | Scenario | Method | Endpoint | Test Data | Expected Result |
|---|---|---|---|---|---|
| TC-API-001 | Retrieve all users successfully | GET | `/users` | None | Response returns HTTP `200`; response is JSON and contains a user array. |
| TC-API-002 | Retrieve an existing user by ID | GET | `/users/1` | `id = 1` | Response returns HTTP `200`; a user object is returned and its ID matches the requested ID. |
| TC-API-003 | Retrieve another existing user | GET | `/users/5` | `id = 5` | Response returns HTTP `200`; returned user ID is `5` and required user information is present. |
| TC-API-004 | Request a user that does not exist | GET | `/users/9999` | `id = 9999` | Response returns HTTP `404`; no valid user object is returned. |
| TC-API-005 | Validate required fields in a user response | GET | `/users/1` | None | Response contains `id`, `name`, `username`, and `email`. |
| TC-API-006 | Validate user ID data type | GET | `/users/1` | None | The returned `id` is a numeric value as required by the project specification. |
| TC-API-007 | Create a user with valid information | POST | `/users` | Valid name, username, and email | Response returns HTTP `201`; response contains user data, an ID, and the submitted values. |
| TC-API-008 | Create a user without the name field | POST | `/users` | `username` and `email` provided; `name` omitted | API behavior should be evaluated against the defined validation contract. No status code is assumed where the specification does not define one. |
| TC-API-009 | Create a user without the email field | POST | `/users` | `name` and `username` provided; `email` omitted | API behavior should follow the defined validation contract for a missing required field. |
| TC-API-010 | Submit an incorrectly formatted email | POST | `/users` | `email = "invalid-email"` | API should handle the invalid input according to the API's validation contract. |
| TC-API-011 | Replace user information using PUT | PUT | `/users/1` | Updated name, username, and email | Response returns HTTP `200`; updated values are returned and the response contains the correct user ID. |
| TC-API-012 | Partially update a user's email | PATCH | `/users/1` | `email = "updated@example.com"` | Response returns HTTP `200`; the supplied email is updated. Other fields should remain unchanged if required by the API contract. |
| TC-API-013 | Delete an existing user | DELETE | `/users/1` | `id = 1` | API returns the successful deletion response defined by the contract. The project permits HTTP `200` or another contract-defined success status. |
| TC-API-014 | Submit a non-numeric user ID | GET | `/users/abc` | `id = "abc"` | API behavior should be validated against its ID-format/validation rules. Do not assume a specific status without a defined contract. |
| TC-API-015 | Validate response time for users endpoint | GET | `/users` | None | Response completes within the acceptable response-time requirement defined for the project/environment. |

---

# Detailed Test Data

## TC-API-007 — Create User

### Request Body

```json
{
    "name": "Swapnali QA",
    "username": "swapnali_qa",
    "email": "swapnali@example.com"
}
```

### Validation Points

- HTTP status should be `201`
- Response should contain user data
- Response should contain an ID
- Returned ID should be numeric
- Submitted `name` should be returned
- Submitted `username` should be returned
- Submitted `email` should be returned

---

## TC-API-008 — Missing Name

### Request Body

```json
{
    "username": "swapnali_qa",
    "email": "swapnali@example.com"
}
```

### Validation Approach

The project does not explicitly define the HTTP status for this negative case.

Therefore:

- Send the request.
- Record the actual status.
- Inspect the response body.
- Compare the behavior with the API contract.
- Do not automatically mark a particular status as expected unless the contract defines it.

---

## TC-API-009 — Missing Email

### Request Body

```json
{
    "name": "Swapnali QA",
    "username": "swapnali_qa"
}
```

### Validation Approach

Verify that the API handles the missing required field according to its defined validation behavior.

Do not assume `400`, `422`, or another status unless the API contract specifies it.

---

## TC-API-010 — Invalid Email

### Request Body

```json
{
    "name": "Swapnali QA",
    "username": "swapnali_qa",
    "email": "invalid-email"
}
```

### Validation Approach

Verify the API's handling of invalid email input according to the contract.

The expected status must come from the API specification rather than from QA assumptions.

---

## TC-API-011 — PUT Update

### Request Body

```json
{
    "name": "Swapnali QA Updated",
    "username": "swapnali_updated",
    "email": "swapnali.updated@example.com"
}
```

### Validation Points

- HTTP status = `200`
- Response contains the correct user ID
- Updated name is returned
- Updated username is returned
- Updated email is returned

---

## TC-API-012 — PATCH Email

### Request Body

```json
{
    "email": "updated@example.com"
}
```

### Validation Points

- HTTP status = `200`
- Response contains the requested user
- Email is updated to the supplied value
- Other fields remain unchanged **if required by the API contract**

---

# Test Case Execution Guidance

When executing these test cases, validate more than the HTTP status.

For each applicable request, check:

1. HTTP status code
2. Response format
3. Response structure
4. Required fields
5. Field values
6. Data types
7. Requested ID vs returned ID
8. Error response behavior
9. Response time
10. Contract compliance

---

## Important QA Principle

A response such as:

```text
HTTP 200 OK
```

does not automatically mean the test has passed.

For example, if the contract requires:

```json
{
    "id": 1
}
```

but the API returns:

```json
{
    "id": "1"
}
```

the HTTP status is successful, but the response violates the required data type.

Therefore, the test should be marked **FAIL** if the contract requires `id` to be a number.

Similarly, an HTTP `404` for a deliberately requested non-existent user can be a **PASS** when `404` is the expected behavior.

---

## Status Handling Rule

Where the project requirements explicitly define an expected result, validate against it.

Where the requirements do **not** define the exact status or response behavior:

> Do not invent an expected result.

Instead:

**Requirement → API Contract → Actual Response → Validation → PASS/FAIL**

This is the QA approach used throughout this project.
