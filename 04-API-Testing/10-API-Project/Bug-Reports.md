# API Bug Reports

## Project: User Management API

**API:** JSONPlaceholder  
**Base URL:** `https://jsonplaceholder.typicode.com`  
**Tool:** Postman  
**Environment:** QA-API-Environment  

> **Note:** The bug reports below represent realistic API defects identified/designated for QA practice. JSONPlaceholder is a mock API, so not every production-style defect can be reproduced on this service. These reports are written to demonstrate professional API defect reporting.

---

## Bug Report Summary

| Bug ID | Title | Severity | Priority | Status |
|---|---|---|---|---|
| BUG-API-001 | User ID returned as String instead of Number | High | High | Open |
| BUG-API-002 | API Returns Success Response for Invalid Email | Medium | High | Open |
| BUG-API-003 | PATCH API Updates Unspecified User Fields | High | High | Open |

---

# BUG-API-001

## Title

**User ID is returned as String instead of Number**

| Field | Details |
|---|---|
| Bug ID | BUG-API-001 |
| Module | User Retrieval |
| Endpoint | `GET /users/{id}` |
| Method | GET |
| Environment | QA |
| Severity | High |
| Priority | High |
| Status | Open |

### Preconditions

- API is available.
- Valid user ID is available.
- API contract specifies that `id` must be a numeric value.

### Steps to Reproduce

1. Open Postman.
2. Send a GET request to:
   `https://jsonplaceholder.typicode.com/users/1`
3. Check the response body.
4. Inspect the data type of the `id` field.

### Test Data

```text
User ID: 1
```

### Expected Result

The API should return the user ID as a **number**.

Example:

```json
{
    "id": 1,
    "name": "Leanne Graham"
}
```

### Actual Result

The API returns the user ID as a **string**.

Example:

```json
{
    "id": "1",
    "name": "Leanne Graham"
}
```

### Impact

Applications consuming the API may experience:

- Data type validation failures.
- Incorrect comparisons between numeric and string IDs.
- Problems with calculations or sorting.
- Integration issues with systems expecting numeric IDs.

### Severity Justification

**High** — The response structure does not follow the defined API contract and can cause integration failures.

### Priority Justification

**High** — The issue affects a fundamental field used to identify users.

### Suggested Fix

Ensure that the API serializes the `id` field as a numeric value instead of a string.

---

# BUG-API-002

## Title

**API accepts invalid email format and returns successful response**

| Field | Details |
|---|---|
| Bug ID | BUG-API-002 |
| Module | User Creation |
| Endpoint | `POST /users` |
| Method | POST |
| Environment | QA |
| Severity | Medium |
| Priority | High |
| Status | Open |

### Preconditions

- API is available.
- User creation endpoint is accessible.
- Email field is defined as mandatory and must contain a valid email format.

### Steps to Reproduce

1. Open Postman.
2. Select `POST` method.
3. Send a request to:
   `https://jsonplaceholder.typicode.com/users`
4. Add the following request body.
5. Send the request.
6. Verify the response status and response body.

### Test Data

```json
{
    "name": "Swapnali QA",
    "username": "swapnali_qa",
    "email": "invalid-email"
}
```

### Expected Result

The API should reject the request because the email format is invalid.

The response should contain:

- Appropriate 4xx status code.
- Validation error message.
- No successful user creation response.

Example:

```json
{
    "error": "Invalid email format"
}
```

### Actual Result

The API accepts the invalid email value and returns a successful creation response.

Example:

```json
{
    "id": 101,
    "name": "Swapnali QA",
    "username": "swapnali_qa",
    "email": "invalid-email"
}
```

### Impact

Invalid user data may enter the system and can cause:

- Invalid customer/user records.
- Email notification failures.
- Data-quality issues.
- Downstream integration problems.

### Severity Justification

**Medium** — The defect affects data validation and data quality but does not necessarily prevent the API from functioning.

### Priority Justification

**High** — Invalid data should be prevented at the API boundary before it reaches downstream systems.

### Suggested Fix

Add server-side email validation and reject invalid email formats with an appropriate validation response.

---

# BUG-API-003

## Title

**PATCH request modifies fields that were not included in the request**

| Field | Details |
|---|---|
| Bug ID | BUG-API-003 |
| Module | User Update |
| Endpoint | `PATCH /users/{id}` |
| Method | PATCH |
| Environment | QA |
| Severity | High |
| Priority | High |
| Status | Open |

### Preconditions

- Existing user is available.
- PATCH endpoint supports partial updates.
- The API contract requires unspecified fields to remain unchanged.

### Steps to Reproduce

1. Retrieve an existing user using:
   `GET /users/1`
2. Note the existing user details.
3. Send a PATCH request to:
   `https://jsonplaceholder.typicode.com/users/1`
4. Update only the email field.
5. Send the request.
6. Compare the response with the original user data.

### Test Data

```json
{
    "email": "updated.qa@example.com"
}
```

### Expected Result

Only the email should be updated.

The other user fields should remain unchanged.

Example:

```json
{
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "updated.qa@example.com"
}
```

### Actual Result

The API modifies or removes fields that were not included in the PATCH request.

Example:

```json
{
    "id": 1,
    "email": "updated.qa@example.com"
}
```

### Impact

Unexpected modification of unspecified fields can result in:

- Data loss.
- Incorrect user information.
- Integration failures.
- Loss of previously stored values.
- Inconsistent application behavior.

### Severity Justification

**High** — Unexpected modification of existing user data can result in data integrity issues.

### Priority Justification

**High** — Partial update functionality is expected to preserve data that was not explicitly changed.

### Suggested Fix

The API should update only the fields supplied in the PATCH request and preserve all other existing user information.

---

# Bug Reporting QA Checklist

Before submitting an API bug, verify:

- [ ] Bug has a unique Bug ID.
- [ ] Title clearly describes the problem.
- [ ] Module is identified.
- [ ] HTTP method is mentioned.
- [ ] Endpoint is mentioned.
- [ ] Environment is specified.
- [ ] Severity is assigned.
- [ ] Priority is assigned.
- [ ] Preconditions are documented.
- [ ] Steps to reproduce are clear.
- [ ] Test data is included.
- [ ] Expected result is documented.
- [ ] Actual result is documented.
- [ ] Business/technical impact is explained.
- [ ] Status is mentioned.
- [ ] Screenshots/logs/request-response evidence are attached when applicable.

---

# Important QA Note

A successful HTTP status code does **not automatically mean the API is working correctly**.

For example:

```text
HTTP 200
```

may still represent a failed test if:

- Required fields are missing.
- Data types are incorrect.
- Wrong user data is returned.
- Business rules are violated.
- Response structure does not match the contract.

Similarly:

```text
HTTP 400
HTTP 401
HTTP 403
HTTP 404
```

can represent a **PASS** when the error is the expected behavior for the tested scenario.

The QA decision should always be based on the **API contract + expected behavior + actual response**, not the HTTP status code alone.

---

## Defect Lifecycle

```text
New
 ↓
Assigned
 ↓
Open
 ↓
In Progress
 ↓
Fixed
 ↓
Retest
 ↓
 ┌───────────────┐
 │               │
PASS           FAIL
 │               │
Closed        Reopened
```

---

## Key Takeaway

Professional API bug reporting requires more than reporting an incorrect status code.

A strong API defect report explains:

**What was requested → What was expected → What actually happened → Why it matters → How to reproduce it.**
