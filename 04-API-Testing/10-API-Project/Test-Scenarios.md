# API Test Scenarios

## Project: User Management API

**Base URL:** `https://jsonplaceholder.typicode.com`

This document contains **API test scenarios** for the **User Management API**.

The scenarios focus on functional behavior, response validation, positive testing, negative testing, data validation, and contract compliance.

---

## Test Scenarios

| Scenario ID | Requirement | Test Scenario |
|---|---|---|
| TS-API-001 | R-001 | Verify that requesting the users collection returns the expected successful response. |
| TS-API-002 | R-001 | Verify that the users endpoint returns data in JSON format. |
| TS-API-003 | R-001 | Verify that the users endpoint returns a collection containing user records. |
| TS-API-004 | R-001 | Verify that every returned user contains the required `id`, `name`, `username`, and `email` fields. |
| TS-API-005 | R-001 | Verify that each user's `id` follows the required numeric data type. |
| TS-API-006 | R-001 | Verify that user IDs are unique within the returned collection when uniqueness is required. |
| TS-API-007 | R-002 | Verify that requesting an existing user ID returns the corresponding user. |
| TS-API-008 | R-002 | Verify that the ID in the response corresponds to the ID supplied in the request. |
| TS-API-009 | R-002 | Verify that a user returned by the ID endpoint contains all mandatory user attributes. |
| TS-API-010 | R-003 | Verify that requesting a user ID that does not exist produces the contract-defined not-found response. |
| TS-API-011 | R-003 | Verify that an unsuccessful user lookup does not return a valid user object. |
| TS-API-012 | R-004 | Verify that submitting valid user information to the creation endpoint produces the contract-defined successful response. |
| TS-API-013 | R-004 | Verify that the user ID returned after creation follows the required numeric data type. |
| TS-API-014 | R-004 | Verify that the creation response contains the submitted user information as defined by the API contract. |
| TS-API-015 | R-004 | Verify that the API handles a create-user request when a required field is omitted. |
| TS-API-016 | R-005 | Verify that a PUT request updates the intended user's information according to the API contract. |
| TS-API-017 | R-006 | Verify that a PATCH request changes only the field or fields supplied in the request when the contract requires partial-update behavior. |
| TS-API-018 | R-007 | Verify that deleting an existing user produces the contract-defined successful deletion response. |
| TS-API-019 | R-003 | Verify that the API handles incorrectly formatted or non-numeric user IDs according to its validation rules. |
| TS-API-020 | R-001 | Verify that the users endpoint responds within the acceptable response-time requirement. |

---

## Scenario Coverage

### User Retrieval
- Retrieve all users
- Retrieve a specific user
- Retrieve another valid user
- Retrieve a non-existent user
- Validate response structure
- Validate required fields
- Validate data types
- Validate requested ID against returned ID

### User Creation
- Create a user using valid data
- Validate returned user information
- Validate generated ID
- Test missing required information

### User Update
- Replace user information using PUT
- Partially modify user information using PATCH
- Verify that updates affect the intended user

### User Deletion
- Delete an existing user
- Validate the deletion response according to the API contract

### Negative Testing
- Non-existent user ID
- Non-numeric user ID
- Invalid request data
- Missing required fields
- Incorrect endpoint

### Performance / Response Validation
- Validate response time
- Validate HTTP status
- Validate JSON response
- Validate response structure and data types

---

## QA Note

A test scenario describes **what needs to be tested**, not the complete procedure for testing it.

For expected results that are not explicitly defined by the API specification, the test should be evaluated against the actual API contract rather than assuming a particular HTTP status or response structure.

**Important principle:**

> HTTP success does not automatically mean functional success.

A response must also satisfy the defined data, structure, type, and business requirements.
