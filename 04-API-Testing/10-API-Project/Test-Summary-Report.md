# API Test Summary Report

## Project: User Management API

**API:** JSONPlaceholder  
**Base URL:** `https://jsonplaceholder.typicode.com`  
**Testing Tool:** Postman  
**Environment:** QA-API-Environment  
**Test Type:** API Functional, Negative, Validation and Data Type Testing  
**Project Status:** Practice Testing  

---

# 1. Executive Summary

The User Management API was tested using Postman to evaluate its core user-management functionality and response behavior.

The testing covered:

- User retrieval
- User retrieval by ID
- User creation
- User update
- Partial user update
- User deletion
- Negative testing
- JSON response validation
- Required field validation
- Data type validation
- HTTP status code validation

The core API operations demonstrated expected behavior for the scenarios that had clearly defined and objectively verifiable requirements.

Some negative validation scenarios could not be conclusively evaluated because JSONPlaceholder is a mock API and does not provide a complete production-style validation contract for all invalid input conditions.

The overall execution is therefore classified as **Partially Complete**.

---

# 2. Testing Objectives

The primary objectives were to verify that:

- APIs return appropriate HTTP status codes.
- API responses contain the expected JSON structure.
- Required user fields are present.
- User IDs have the expected data type.
- Requested user IDs match returned user IDs.
- Valid user data can be submitted.
- PUT updates return the expected response.
- PATCH supports partial updates.
- DELETE returns a successful response.
- Invalid and non-existent resources are handled appropriately.
- API behavior is evaluated using the API contract rather than status codes alone.
- API responses contain valid and expected data types.
- Negative scenarios are evaluated against defined expected behavior.

---

# 3. Scope of Testing

## In Scope

### User Retrieval

```text
GET /users
GET /users/{id}
```

### User Creation

```text
POST /users
```

### User Update

```text
PUT /users/{id}
PATCH /users/{id}
```

### User Deletion

```text
DELETE /users/{id}
```

### Validation

- HTTP status codes
- JSON format
- Response structure
- Required fields
- Data types
- Returned values
- Negative scenarios
- Invalid IDs
- Request/response behavior  

---

# 4. Test Cases Summary

| Category | Test Cases |
|---|---:|
| User Retrieval | 6 |
| User Creation | 4 |
| User Update | 2 |
| User Deletion | 1 |
| Performance | 1 |
| **Total** | **15** |

---

# 5. Execution Summary

| Status | Count |
|---|---:|
| PASS | 10 |
| FAIL | 0 |
| BLOCKED / CONTRACT NOT DEFINED | 3 |
| NOT EXECUTED | 2 |
| **Total** | **15** |

### Execution Interpretation

The 10 passed cases represent scenarios with clearly defined and objectively verifiable behavior.

The blocked cases require additional API contract details.

The remaining cases require execution before a final PASS/FAIL decision can be made.

---

# 6. Functional Testing Summary

## User Retrieval

The user retrieval APIs were evaluated for:

- Successful response.
- Correct HTTP status.
- Correct user ID.
- Required user fields.
- Response structure.
- Data types.
- Non-existent user handling.

**Result:** PASS for executed scenarios.

---

## User Creation

The valid user creation scenario was evaluated using POST.

Example request:

```json
{
    "name": "Swapnali QA",
    "username": "swapnali_qa",
    "email": "swapnali.qa@example.com"
}
```

The response was expected to contain:

- Successful creation status.
- Generated user ID.
- Submitted user data.
- Numeric ID.

**Result:** PASS for the valid creation scenario.

Negative creation scenarios require a clearly defined validation contract.

---

## User Update

PUT testing verified that the API accepts an update request and returns the updated user information.

**Result:** PASS for the executed scenario.

---

## Partial Update

PATCH testing verified partial update behavior using an email update.

Example:

```json
{
    "email": "updated.qa@example.com"
}
```

**Result:** PASS for the executed scenario.

---

## User Deletion

DELETE testing verified that the API returns a successful response for the deletion request.

**Result:** PASS.

---

# 7. Negative Testing Summary

Negative testing was included to evaluate how the API handles invalid conditions.

Scenarios included:

| Scenario | Result |
|---|---|
| Non-existent user ID | PASS |
| Invalid/non-numeric ID | PASS |
| Missing name | BLOCKED |
| Missing email | BLOCKED |
| Invalid email | NOT EXECUTED |

### QA Observation

Negative testing should always be based on the expected API contract.

For example, if the contract says:

```text
Invalid input → HTTP 400
```

then:

```text
Expected = 400
Actual = 400
Result = PASS
```

However, if the contract does not define the expected status, QA should not arbitrarily declare `400` as the required result.

---

# 8. Data Validation Summary

The following validations were performed:

### Required Fields

```text
id
name
username
email
```

### Data Types

```text
id       → number
name     → string
username → string
email    → string
```

### Response Structures

```text
GET /users
→ Array

GET /users/{id}
→ Object
```

### ID Validation

The returned user ID was compared against the requested ID.

Example:

```text
Requested ID: 1
Returned ID: 1
Result: PASS
```

---

# 9. HTTP Status Code Validation

The testing demonstrated an important API testing principle:

**HTTP status code alone is not sufficient to determine test success.**

Example:

```text
HTTP 200
```

could still be a failure if:

- Wrong user is returned.
- Required fields are missing.
- Data types are incorrect.
- Response structure is incorrect.
- Business rules are violated.

Similarly:

```text
HTTP 404
```

can be a successful test result when testing a non-existent resource.

---

# 10. Defect Summary

| Bug ID | Description | Severity | Priority | Status |
|---|---|---|---|---|
| BUG-API-001 | User ID returned as String instead of Number | High | High | Open - Practice Example |
| BUG-API-002 | Invalid email accepted during user creation | Medium | High | Open - Practice Example |
| BUG-API-003 | PATCH modifies unspecified fields | High | High | Open - Practice Example |

### Important Note

These bug reports are included as **QA practice examples**.

They should only be presented as actual defects discovered during execution if the behavior is reproduced and documented with Postman request/response evidence.

---

# 11. API Chaining Assessment

The planned end-to-end workflow is:

```text
POST Create User
        ↓
Extract createdUserId
        ↓
GET User
        ↓
PUT User
        ↓
GET Updated User
        ↓
PATCH Email
        ↓
GET Updated Email
        ↓
DELETE User
```

### Important JSONPlaceholder Limitation

JSONPlaceholder is a mock API and does not provide production-style persistent data storage.

Therefore, the workflow can demonstrate:

- Dynamic variable extraction.
- Request chaining.
- Passing IDs between requests.
- PUT/PATCH request construction.
- Response validation.

However, it should **not** be presented as proof of persistent database changes.

---

# 12. Authentication Testing

Real authentication testing was not included in the functional execution because JSONPlaceholder does not provide a real authentication mechanism.

A hypothetical secured API design was documented separately for:

- Valid token.
- Invalid token.
- Missing token.
- Expired token.
- Empty token.
- Malformed token.
- Wrong authentication scheme.
- Insufficient permissions.

Expected authentication behavior should be based on the actual API contract.

---

# 13. Risks and Limitations

### 1. Mock API

JSONPlaceholder is not a production backend.

### 2. Data Persistence

POST, PUT and PATCH operations should not be treated as persistent database transactions.

### 3. Validation Contract

Some negative scenarios do not have detailed validation requirements.

### 4. Performance

No formal response-time SLA was provided.

Therefore, performance cannot be conclusively assessed.

### 5. Authentication

The API does not provide real authentication.

---

# 14. Recommendations

For a production-ready API, the following areas should have explicit requirements:

1. Required-field validation.
2. Email format validation.
3. Data type validation.
4. Error response structure.
5. Error messages.
6. Authentication requirements.
7. Authorization rules.
8. Response-time SLA.
9. Rate limiting.
10. Data persistence behavior.
11. API versioning.
12. Security requirements.
13. Input validation rules.
14. Business validation rules.
15. Logging and traceability requirements.

---

# 15. Overall Assessment

| Area | Assessment |
|---|---|
| User Retrieval | PASS |
| User Creation | PASS for valid request |
| User Update | PASS |
| Partial Update | PASS |
| User Deletion | PASS |
| Negative Testing | Partially Complete |
| Data Type Validation | PASS |
| Response Structure Validation | PASS |
| Required Field Validation | Partially Complete |
| Authentication | Not Applicable |
| Performance | Pending |
| API Chaining | Pending |
| Defect Reporting | Completed as Practice Examples |

---

# 16. Final Test Conclusion

The User Management API project successfully demonstrates the core principles of API testing using Postman.

The testing covered both **positive and negative testing**, along with response-level validation rather than relying only on HTTP status codes.

The project also demonstrates practical QA skills including:

- REST API testing.
- HTTP method validation.
- Status code validation.
- JSON validation.
- Data type validation.
- Negative testing.
- API request/response analysis.
- Dynamic variables.
- API chaining.
- Defect reporting.
- Test execution reporting.
- Test summary reporting.

The remaining execution activities should be completed in Postman and the final results should replace the pending/blocked statuses in the execution report.

---

# 17. Final Project Status

**Overall Status: PARTIALLY COMPLETE**

### Completed

- Test Scenarios
- Test Cases
- Bug Reports
- Core API Functional Testing
- Response Validation
- Data Type Validation
- Negative Testing Design
- Test Execution Documentation
- Test Summary Documentation
- Postman API Testing Exercises
- Dynamic Variables and API Chaining Practice

### Pending

- Complete Postman collection execution
- Complete negative test execution
- Define and execute invalid email validation
- Complete API chaining execution within the project collection
- Response-time measurement against a defined threshold
- Before/after validation for persistent update scenarios
- Request/response evidence and screenshots
- Final execution result update

---

## QA Takeaway

> **A good API tester does not simply check whether the server returned 200. A good API tester verifies whether the response is correct, complete, valid, secure and consistent with the API contract.**
