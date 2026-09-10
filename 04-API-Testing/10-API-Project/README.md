# User Management API Testing Project

An end-to-end API testing project demonstrating QA skills with Postman — functional, negative, and data-type testing against a REST API, from test design through execution and reporting.

> Part of [`04-API-Testing`](../) — see the parent folder for the underlying fundamentals and Postman scripting reference this project applies.

---

## 📌 Overview

| Field | Details |
|---|---|
| **API** | JSONPlaceholder (mock REST API) |
| **Base URL** | `https://jsonplaceholder.typicode.com` |
| **Tool** | Postman |
| **Test Types** | Functional, Negative, Validation, Data Type |
| **Status** | Partially Complete |

---

## 🔗 Endpoints Tested

| # | Endpoint | Purpose |
|---|---|---|
| 1 | `GET /users` | Retrieve all users — expect 200, JSON array, required fields present |
| 2 | `GET /users/{id}` | Retrieve one user — expect 200, returned ID matches requested ID |
| 3 | `GET /users/9999` | Non-existent user — expect 404, no valid user object |
| 4 | `GET /users?username=Bret` | Query-parameter retrieval |
| 5 | `POST /users` | Create user — expect 201, numeric ID, submitted values returned |
| 6 | `PUT /users/{id}` | Full update — expect 200, updated values returned |
| 7 | `PATCH /users/{id}` | Partial update — expect 200, only targeted field changes |
| 8 | `DELETE /users/{id}` | Delete — expect a contract-defined success response |

---

## 📋 Test Coverage & Results

| Category | Test Cases |
|---|---:|
| User Retrieval | 6 |
| User Creation | 4 |
| User Update | 2 |
| User Deletion | 1 |
| Performance | 1 |
| **Total** | **15** |

| Status | Count |
|---|---:|
| PASS | 10 |
| FAIL | 0 |
| BLOCKED / Contract Not Defined | 3 |
| NOT EXECUTED | 2 |

**Pass Rate: 83.3%** (10 of 12 executed & verifiable cases — blocked cases are excluded since the expected behavior wasn't contractually defined, not because anything failed)

Full detail: [Test-Execution-Report.md](./Test-Execution-Report.md) · [Test-Summary-Report.md](./Test-Summary-Report.md)

---

## 🎓 Key QA Principle

```text
HTTP Status Code  ≠  Complete API Validation
```

A `200 OK` only confirms the server responded — status, structure, required fields, data types, values, and business rules must *all* match the contract before a test is marked PASS. Conversely, a `404` on a deliberately invalid request is a PASS, not a failure. This principle governs every result in this project — see any report below for it applied to a specific case.

---

## 🔄 API Chaining

```text
POST Create User → Extract ID → Store in {{createdUserId}} → GET/PUT/PATCH using it → DELETE
```

Demonstrates dynamic variable extraction and request chaining in Postman. Since JSONPlaceholder is a mock API, this shows the *technique* — it isn't proof of persistent database changes (see Limitations below).

---

## 🐞 Defects (Practice Examples)

| Bug ID | Description | Severity | Priority |
|---|---|---|---|
| BUG-API-001 | User ID returned as String instead of Number | High | High |
| BUG-API-002 | Invalid email accepted during user creation | Medium | High |
| BUG-API-003 | PATCH modifies unspecified fields | High | High |

Full reports: [Bug-Reports.md](./Bug-Reports.md). These are QA practice examples demonstrating defect-reporting format, not confirmed production defects.

---

## ⚠️ JSONPlaceholder Limitations

A mock API — POST/PUT/PATCH/DELETE responses don't reflect a real persistent database, there's no real authentication, and no formal performance SLA is defined. These limits are factored into every result above (e.g. why some negative cases are BLOCKED rather than PASS/FAIL).

---

## 📁 Project Files

| File | Contents |
|---|---|
| [Test-Scenarios.md](./Test-Scenarios.md) | 20 high-level scenarios |
| [Test-Cases.md](./Test-Cases.md) | 15 detailed test cases with steps and expected results |
| [Bug-Reports.md](./Bug-Reports.md) | 3 practice defect reports |
| [Test-Execution-Report.md](./Test-Execution-Report.md) | Per-test execution results and evidence |
| [Test-Summary-Report.md](./Test-Summary-Report.md) | Executive summary, metrics, and recommendations |

---

## 📈 QA Skills Demonstrated

REST API testing (GET/POST/PUT/PATCH/DELETE) · HTTP status & JSON validation · Data type validation · Postman variables & test scripts · API chaining · Negative testing · Defect reporting · Test execution & summary reporting

---

## Status

**Completed:** Test design (scenarios, cases, bugs), core functional/negative/validation testing, execution and summary documentation.

**Pending:** Full Postman collection execution, response-time measurement, before/after persistence checks, request/response screenshots.
