# API Test Execution Report

## Project: User Management API

**API:** JSONPlaceholder · **Tool:** Postman · **Environment:** QA-API-Environment
**Tester:** Swapnali Shitole · **Status:** Practice Execution

---

## 1. Objective & Environment

Verify the User Management API's functional and negative behavior: retrieval, creation, update, partial update, deletion, and response validation (status, structure, fields, data types).

| Variable | Value |
|---|---|
| `baseUrl` | `https://jsonplaceholder.typicode.com` |
| `userId` | `1` |
| `createdUserId` | Extracted dynamically during POST |

> JSONPlaceholder is a mock API — POST/PUT/PATCH/DELETE responses don't reflect a real persistent database.

---

## 2. Execution Summary

| Metric | Result |
|---|---:|
| Total Test Cases | 15 |
| Passed | 10 |
| Failed | 0 |
| Blocked / Contract Not Defined | 3 |
| Not Executed | 2 |
| **Pass Rate*** | **83.3%** |

\* `10 Passed / 12 Executed × 100`. Blocked cases are excluded — the required behavior wasn't contractually defined, not because anything failed.

---

## 3. Detailed Results

| TC ID | Scenario | Status | Remarks |
|---|---|---|---|
| TC-API-001 | Retrieve all users | PASS | 200, array returned |
| TC-API-002 | Retrieve user ID 1 | PASS | ID matched |
| TC-API-003 | Retrieve user ID 5 | PASS | ID matched |
| TC-API-004 | Retrieve non-existent user | PASS | 404 is the expected result here, not a failure |
| TC-API-005 | Required fields present | PASS | `id`, `name`, `username`, `email` all present |
| TC-API-006 | ID data type | PASS | Returned as number |
| TC-API-007 | Create user (valid) | PASS | 201, ID numeric, values echoed back |
| TC-API-008 | Create user, missing name | BLOCKED | No defined validation contract for this case |
| TC-API-009 | Create user, missing email | BLOCKED | Same limitation as above |
| TC-API-010 | Create user, invalid email | NOT EXECUTED | Pending a defined validation contract |
| TC-API-011 | Update via PUT | PASS | Updated values returned correctly |
| TC-API-012 | Partial update via PATCH | PASS | Email updated as requested |
| TC-API-013 | Delete user | PASS | 200 returned |
| TC-API-014 | Non-numeric user ID | BLOCKED | Error observed, but expected status undefined |
| TC-API-015 | Response time | NOT EXECUTED | No SLA/threshold defined to test against |

---

## 4. Notes on Blocked & Not-Executed Cases

**Blocked (TC-008, 009, 014):** JSONPlaceholder doesn't define production-style validation for missing fields or malformed IDs. Marking these `400`/`404` without a contract would mean inventing a requirement — so they're BLOCKED, not guessed at.

**Not Executed (TC-010, 015):** Invalid-email handling and response-time both need a defined contract/threshold before they can be meaningfully tested. Suggested contract for a production API: `invalid email → 400 Bad Request`; `response time < 1000ms`.

---

## 5. Key QA Principle Applied

```text
HTTP Status Code  ≠  Complete API Validation
```

A `200` can still be a FAIL (wrong data, wrong type, broken contract); a `404` can be a PASS when it's the expected result. Every result above follows:

```text
API Contract → Expected Behavior → Actual Response → Validation → PASS / FAIL / BLOCKED
```

---

## 6. Defect Status

No defects were confirmed during this execution. [Bug-Reports.md](./Bug-Reports.md) contains 3 practice examples (BUG-API-001–003) demonstrating defect-reporting format — not confirmed JSONPlaceholder defects.

---

## 7. Metrics

| Metric | Value |
|---|---:|
| Executed & Verifiable | 12 |
| Pass Rate | 83.3% |
| Blocked Rate | 20.0% |
| Not Executed Rate | 13.3% |

---

## 8. Conclusion & Next Steps

Core CRUD operations and response validation all passed for objectively-defined scenarios. Remaining work:

1. Define and execute the 3 blocked negative cases once a validation contract exists.
2. Execute invalid-email validation and response-time checks.
3. Run the full Postman collection and capture request/response evidence.
4. Complete the API chaining workflow end to end.

**Overall Status: Partially Executed** — Core functionality: PASS · Negative validation: Partially Executed · Performance: Pending
