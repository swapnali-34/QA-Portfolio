# API Test Cases

## User API — GET `/users/{id}`

| TC ID | Test Case | Expected Result |
|---|---|---|
| API-TC-001 | Verify GET request with valid user ID | Status code is 200 |
| API-TC-002 | Verify response contains ID | ID field exists |
| API-TC-003 | Verify response contains name | Name field exists |
| API-TC-004 | Verify returned ID matches requested ID | Requested and returned IDs match |
| API-TC-005 | Verify ID data type | ID is a number |
| API-TC-006 | Verify email field exists | Email field exists |
| API-TC-007 | Verify response Content-Type | Contains `application/json` |
| API-TC-008 | Verify invalid user ID | Status code is 404 |

---

## User API — POST `/users`

| TC ID | Test Case | Expected Result |
|---|---|---|
| API-TC-009 | Create user with valid data | Status code is 201 |
| API-TC-010 | Verify generated ID | ID exists |
| API-TC-011 | Verify ID data type | ID is a number |
| API-TC-012 | Verify returned name | Name matches request |
| API-TC-013 | Verify returned username | Username matches request |
| API-TC-014 | Verify returned email | Email matches request |

---

## Posts API — GET `/posts?userId={id}`

| TC ID | Test Case | Expected Result |
|---|---|---|
| API-TC-015 | Verify valid userId query parameter | Status code is 200 |
| API-TC-016 | Verify response type | Response is an array |
| API-TC-017 | Verify record count | 10 records returned |
| API-TC-018 | Verify first record userId | userId matches requested ID |
| API-TC-019 | Verify all records userId | Every record has expected userId |

---

## API Chaining

| TC ID | Test Case | Expected Result |
|---|---|---|
| API-TC-020 | Create user and capture ID | ID is returned |
| API-TC-021 | Store created ID in variable | Variable contains returned ID |
| API-TC-022 | Use created ID in GET request | Correct user is retrieved |
| API-TC-023 | Validate chained response | Returned data matches created data |

---

## Negative Testing

| TC ID | Test Case | Expected Result |
|---|---|---|
| API-TC-024 | Request non-existing user | Status code is 404 |
| API-TC-025 | Validate negative test result | Test passes when expected 404 is returned |
