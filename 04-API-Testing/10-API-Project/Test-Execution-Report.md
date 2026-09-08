# API Test Execution Report

## Project: User Management API

**API:** JSONPlaceholder  
**Base URL:** `https://jsonplaceholder.typicode.com`  
**Testing Tool:** Postman  
**Environment:** QA-API-Environment  
**Test Type:** API Functional, Negative, Validation and Data Type Testing  
**Tester:** QA Analyst  
**Execution Status:** Practice Execution  

---

## 1. Test Execution Objective

The objective of this test execution is to verify the functionality and response behavior of the User Management API.

The testing focuses on:

- User retrieval
- User creation
- User update
- Partial user update
- User deletion
- Negative API testing
- Response validation
- JSON structure validation
- Data type validation
- Required field validation
- HTTP status code validation
- Response time validation

---

## 2. Test Environment

| Item | Details |
|---|---|
| API | JSONPlaceholder |
| Base URL | `https://jsonplaceholder.typicode.com` |
| Tool | Postman |
| Environment | QA-API-Environment |
| HTTP Protocol | HTTPS |
| Response Format | JSON |
| Database | Mock API / Non-persistent |
| Test Type | Functional & Negative API Testing |

### Environment Variables

| Variable | Value / Purpose |
|---|---|
| `baseUrl` | `https://jsonplaceholder.typicode.com` |
| `userId` | `1` |
| `createdUserId` | Dynamically extracted during POST |
| `authToken` | Not applicable to JSONPlaceholder |

> **Important:** JSONPlaceholder is a mock API. POST, PUT and PATCH operations can return successful responses but do not behave like operations against a production persistent database.

---

# 3. Test Execution Summary

| Metric | Result |
|---|---:|
| Total Test Cases | 15 |
| Passed | 10 |
| Failed | 0 |
| Blocked / Contract Not Defined | 3 |
| Not Executed | 2 |
| Pass Percentage* | 83.3% |
| Overall Execution | Partially Completed |

\* Pass percentage is calculated against executed and objectively verifiable test cases only.

**Calculation:** `10 Passed / 12 Executed × 100 = 83.3%`

> **Note:** Blocked test cases are excluded from the pass-percentage calculation because the required API contract or expected behavior was not defined.

---

# 4. Detailed Test Execution Results

| TC ID | Test Scenario | Method | Expected Result | Execution Status | Remarks |
|---|---|---|---|---|---|
| TC-API-001 | Retrieve all users | GET | HTTP 200 and user array returned | PASS | Response returned successfully |
| TC-API-002 | Retrieve user with valid ID 1 | GET | HTTP 200 and user ID 1 returned | PASS | Returned user matched requested ID |
| TC-API-003 | Retrieve user with valid ID 5 | GET | HTTP 200 and user ID 5 returned | PASS | Returned user matched requested ID |
| TC-API-004 | Retrieve non-existent user | GET | HTTP 404 and no valid user object | PASS | Negative scenario behaved as expected |
| TC-API-005 | Validate required user fields | GET | id, name, username and email present | PASS | Required fields were available |
| TC-API-006 | Validate user ID data type | GET | ID should be numeric | PASS | ID returned as number |
| TC-API-007 | Create user with valid data | POST | HTTP 201 and submitted data returned | PASS | Successful mock creation response |
| TC-API-008 | Create user without name | POST | Validation error according to API contract | BLOCKED | JSONPlaceholder does not define production-style required-field validation |
| TC-API-009 | Create user without email | POST | Validation error according to API contract | BLOCKED | API specification does not define required-field validation behavior |
| TC-API-010 | Create user with invalid email | POST | Invalid email should be rejected | NOT EXECUTED | Negative validation execution pending |
| TC-API-011 | Update user using PUT | PUT | HTTP 200 and updated values returned | PASS | Successful update response |
| TC-API-012 | Partially update user using PATCH | PATCH | HTTP 200 and email update returned | PASS | Successful partial update response |
| TC-API-013 | Delete user | DELETE | Successful deletion response | PASS | HTTP 200 returned |
| TC-API-014 | Retrieve user using non-numeric ID | GET | Defined error response according to API contract | BLOCKED | Error response was observed, but expected status for non-numeric input is not defined by the project contract |
| TC-API-015 | Validate API response time | GET | Response within defined requirement | NOT EXECUTED | No specific response-time threshold defined |

---

# 5. Passed Test Cases

The following test cases were successfully validated during the practice execution.

## TC-API-001 — GET All Users

**Request:**

```text
GET {{baseUrl}}/users
```

**Validation:**

- HTTP status = 200
- Response is JSON
- Response is an array
- User records are returned

**Result:** PASS

---

## TC-API-002 — GET User 1

**Request:**

```text
GET {{baseUrl}}/users/1
```

**Validation:**

- HTTP status = 200
- `id` exists
- `id = 1`
- `name` exists
- `username` exists
- `email` exists
- `id` is a number
- `email` is a string

**Result:** PASS

---

## TC-API-003 — GET User 5

**Request:**

```text
GET {{baseUrl}}/users/5
```

**Validation:**

- HTTP status = 200
- Returned ID = 5
- Required user fields are present

**Result:** PASS

---

## TC-API-004 — Non-Existent User

**Request:**

```text
GET {{baseUrl}}/users/9999
```

**Expected:**

```text
404 Not Found
```

**Result:** PASS

### QA Observation

A `404` response is not automatically a failure.

For this negative test case, `404` is the expected behavior. Therefore, the test passes.

```text
GET /users/9999

Expected: 404
Actual:   404
Result:   PASS
```

---

## TC-API-005 — Required User Fields

The response was checked for:

```text
id
name
username
email
```

**Result:** PASS

---

## TC-API-006 — Data Type Validation

The `id` field was validated to ensure that it is numeric.

Example:

```json
{
    "id": 1
}
```

**Result:** PASS

---

## TC-API-007 — Create User

**Request:**

```text
POST {{baseUrl}}/users
```

**Request Body:**

```json
{
    "name": "Swapnali QA",
    "username": "swapnali_qa",
    "email": "swapnali.qa@example.com"
}
```

**Expected:**

- HTTP 201
- ID returned
- ID is numeric
- Submitted values returned

**Result:** PASS

> **QA Note:** This confirms the successful HTTP/mock response. It does not prove that the new user was permanently stored because JSONPlaceholder is non-persistent.

---

## TC-API-011 — Update User

**Request:**

```text
PUT {{baseUrl}}/users/1
```

**Validation:**

- HTTP status = 200
- Updated user data returned
- User ID corresponds to the requested user
- Updated values are reflected in the response

**Result:** PASS

---

## TC-API-012 — Partial Update

**Request:**

```text
PATCH {{baseUrl}}/users/1
```

**Request Body:**

```json
{
    "email": "updated.qa@example.com"
}
```

**Validation:**

- HTTP status = 200
- Updated email is returned
- Response corresponds to the requested user

**Result:** PASS

> **QA Note:** A complete data-integrity verification of unchanged fields would require a before/after GET comparison against a persistent API.

---

## TC-API-013 — Delete User

**Request:**

```text
DELETE {{baseUrl}}/users/1
```

**Expected:**

Successful deletion response according to the API behavior.

**Actual:**

HTTP 200 returned.

**Result:** PASS

> **QA Note:** Because JSONPlaceholder is non-persistent, this response should not be interpreted as proof that a production database record was permanently deleted.

---

# 6. Blocked Test Cases

## TC-API-008 — Missing Name

The intended test is to verify that the API rejects a request when the required `name` field is missing.

However, JSONPlaceholder is a mock API and does not provide a production-style validation contract for required fields.

Therefore, declaring a specific `400` response as mandatory would mean inventing a requirement.

**Result:** BLOCKED / CONTRACT NOT DEFINED

### Required information to execute this test

The API specification should define:

- Whether `name` is mandatory
- Expected HTTP status code
- Expected validation response
- Expected error message
- Error response structure

---

## TC-API-009 — Missing Email

The same limitation applies to the missing-email scenario.

The test requires a defined API contract specifying:

- Whether email is mandatory
- Expected HTTP status
- Expected validation response
- Expected error message
- Error response structure

**Result:** BLOCKED / CONTRACT NOT DEFINED

---

## TC-API-014 — Non-Numeric User ID

The intended test is to verify how the API handles a non-numeric user ID.

Example:

```text
GET {{baseUrl}}/users/abc
```

An error response may be observed from the mock API.

However, the project requirements do not define whether a non-numeric ID should return:

- `400 Bad Request`
- `404 Not Found`
- Another 4xx response
- A specific validation message

Therefore, the observed error response cannot be conclusively marked PASS without a defined contract.

**Result:** BLOCKED / CONTRACT NOT DEFINED

> **QA Principle:** An observed error response is not automatically a PASS. The expected behavior must be defined first.

---

# 7. Not Executed Test Cases

## TC-API-010 — Invalid Email

**Test Data:**

```json
{
    "name": "Swapnali QA",
    "username": "swapnali_qa",
    "email": "invalid-email"
}
```

The test should verify whether the API validates email format.

However, the project currently does not define the exact validation contract.

The test remains pending until the expected behavior is formally defined.

**Result:** NOT EXECUTED

### Suggested contract for a production API

```text
Invalid email → 400 Bad Request
Error message → Invalid email format
```

This is a suggested requirement for testing purposes, not an existing JSONPlaceholder requirement.

---

## TC-API-015 — Response Time

Response-time testing requires a defined performance requirement.

Example:

```text
API response time must be less than 1000 ms.
```

Since the project assignment does not define a specific response-time threshold, the test should not be marked PASS or FAIL without that requirement.

**Result:** NOT EXECUTED

### Recommended future validation

Capture the actual Postman response time and compare it against a defined SLA/SLO.

Example:

```text
Expected: < 1000 ms
Actual:   <observed response time>
Result:   PASS / FAIL
```

---

# 8. Negative Testing Observations

Negative testing was performed or designed for:

- Non-existent user ID
- Invalid user ID
- Missing required fields
- Invalid email
- Invalid request data

The key QA principle applied was:

> An error response can be a PASS when the error is the expected behavior.

For example:

```text
GET /users/9999

Expected: 404
Actual:   404
Result:   PASS
```

However, when the expected error behavior is not defined by the API contract, the test should be marked **BLOCKED / CONTRACT NOT DEFINED** rather than automatically passing or failing.

---

# 9. Data Validation Performed

The following response-level validations were considered.

## Status Code

```text
200
201
404
```

Status codes were evaluated against the expected behavior of each test case rather than being treated as automatic PASS/FAIL indicators.

---

## Required Fields

```text
id
name
username
email
```

---

## Data Types

```text
id       → number
name     → string
username → string
email    → string
```

---

## Response Structure

```text
GET /users       → Array
GET /users/{id}  → Object
```

---

## Value Validation

Examples of value-level validation included:

```text
Requested user ID = Returned user ID
Expected user ID 1 = Actual user ID 1
Expected user ID 5 = Actual user ID 5
```

---

# 10. API Test Execution Notes

## JSONPlaceholder Limitation

JSONPlaceholder is a mock API.

Therefore:

- POST responses may contain generated IDs.
- PUT responses may show updated data.
- PATCH responses may show updated data.
- DELETE may return a successful response.
- Changes should not be treated as persistent production database changes.

For this reason, a POST → GET workflow using the newly generated ID should not automatically be interpreted as proof that the created user was persisted.

---

## HTTP Status vs Functional Validation

A successful HTTP status code does **not automatically mean the API is functionally correct**.

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

The final QA decision should always be based on:

```text
API Contract
     ↓
Expected Behavior
     ↓
Actual Response
     ↓
Validation
     ↓
PASS / FAIL / BLOCKED
```

---

# 11. Defect Status

During this practice execution, no production defect has been officially logged from the executed functional scenarios.

The `Bug-Reports.md` file contains realistic API defect examples for QA portfolio practice.

These examples should not be represented as confirmed defects in JSONPlaceholder unless they are reproduced and supported by actual execution evidence.

### Defect Classification

| Bug ID | Classification | Purpose |
|---|---|---|
| BUG-API-001 | Hypothetical / Contract Validation | Demonstrates data-type contract violation reporting |
| BUG-API-002 | Hypothetical / Validation | Demonstrates invalid-input validation reporting |
| BUG-API-003 | Hypothetical / Data Integrity | Demonstrates partial-update integrity reporting |

> **Important:** Portfolio practice defects should clearly distinguish between simulated defects and defects actually reproduced in the tested API.

---

# 12. Test Execution Metrics

| Metric | Value |
|---|---:|
| Total Test Cases | 15 |
| Executed & Verifiable | 12 |
| Passed | 10 |
| Failed | 0 |
| Blocked | 3 |
| Not Executed | 2 |
| Pass Rate | 83.3% |
| Failure Rate | 0% |
| Blocked Rate | 20.0% |
| Not Executed Rate | 13.3% |

### Metric Calculation

```text
Pass Rate
= Passed / Executed & Verifiable × 100
= 10 / 12 × 100
= 83.3%
```

> The blocked cases are excluded from the pass-rate calculation because the required expected behavior is not defined.

---

# 13. Execution Conclusion

The API demonstrated successful behavior for the core retrieval, creation, update, partial-update and deletion scenarios that were objectively defined by the project requirements.

The following areas were successfully validated:

- GET operations
- POST operation
- PUT operation
- PATCH operation
- DELETE operation
- Required response fields
- JSON response structure
- Data types
- Positive scenarios
- Non-existent-user negative scenario

Some negative validation scenarios require a more explicit API contract before they can be conclusively marked PASS or FAIL.

The next execution cycle should focus on:

1. Completing negative API testing.
2. Defining and executing invalid-email validation.
3. Executing the complete Postman test-script collection.
4. Capturing actual response times against a defined threshold.
5. Executing the complete API chaining workflow within the project collection.
6. Performing before/after validation for update operations where persistence is relevant.
7. Recording any reproducible defects with request/response evidence.

---

# Final Execution Status

**Overall Status: PARTIALLY EXECUTED**

**Core API Functionality: PASS**

**Negative Validation: Partially Executed**

**Response Schema & Data Validation: PASS**

**Performance Validation: Pending**

**API Chaining: Pending within Project Execution Cycle**

**Production Defects: None Officially Reported**

---

## QA Key Takeaway

A professional API test execution report should clearly distinguish between:

```text
PASS
FAIL
BLOCKED
NOT EXECUTED
```

A test should be marked **PASS** only when the actual result satisfies a defined expected result.

If the requirement is missing or ambiguous, **BLOCKED / CONTRACT NOT DEFINED** is more professionally accurate than guessing the expected behavior.

This approach demonstrates an important QA skill:

**Do not test against assumptions — test against defined requirements and observable evidence.**
