# API Test Scenarios

## Project: User Management API

**Base URL:** `https://jsonplaceholder.typicode.com`

High-level test scenarios covering functional behavior, response validation, positive/negative testing, and contract compliance.

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

Covers: user retrieval (all users, by ID, non-existent, query params) · creation (valid + missing fields) · full/partial update · deletion · negative testing (invalid/non-numeric IDs) · response-time validation.

---

## QA Note

A scenario describes **what** needs to be tested, not the full procedure. Where the API contract doesn't define an expected result, the test is evaluated against the actual contract rather than an assumed HTTP status — see [Test-Cases.md](./Test-Cases.md) for how each scenario is executed.

> HTTP success does not automatically mean functional success.
