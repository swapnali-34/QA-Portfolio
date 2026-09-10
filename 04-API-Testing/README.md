# API Testing with Postman

Practical API testing skills — REST APIs, HTTP methods, request/response validation, JSON, Postman scripting, API chaining, and negative testing — applied to a real end-to-end project.

---

## 🛠️ Tools Used

Postman · Git · GitHub · JSONPlaceholder API

---

## 📄 Documentation

| File | Contents |
|---|---|
| [01-API-Fundamentals.md](./01-API-Fundamentals.md) | What an API/REST API/endpoint is; the QA Analyst's role in API testing |
| [02-HTTP-Methods.md](./02-HTTP-Methods.md) | GET, POST, PUT, PATCH, DELETE — purpose and QA focus for each |
| [03-HTTP-Status-Codes.md](./03-HTTP-Status-Codes.md) | 2xx/4xx/5xx codes and why a 4xx isn't automatically a failure |
| [04-Request-Response.md](./04-Request-Response.md) | Request/response structure and validation flow |
| [05-JSON.md](./05-JSON.md) | JSON data types and validating value + data type together |
| [06-Postman-Basics.md](./06-Postman-Basics.md) | Requests, variables, environment variables, API chaining |
| [07-API-Test-Cases.md](./07-API-Test-Cases.md) | 25 practice test cases — GET, POST, query params, chaining, negative |
| [08-API-Test-Scripts.md](./08-API-Test-Scripts.md) | Postman test script patterns (the reference library for all scripts) |
| [09-API-Validation.md](./09-API-Validation.md) | Validation checklist, cross-referencing the scripts above |

---

## 🎯 Key QA Principle

```text
HTTP Status Code  ≠  Complete API Validation
```

A `200 OK` isn't a pass on its own — status, structure, required fields, data types, values, and business rules must all match the contract. Applied throughout this project; see [10-API-Project](./10-API-Project) for it in practice.

---

## 📁 Structure

```text
04-API-Testing/
├── README.md
├── 01-API-Fundamentals.md ... 09-API-Validation.md
└── 10-API-Project/
    ├── README.md
    ├── Test-Scenarios.md
    ├── Test-Cases.md
    ├── Bug-Reports.md
    ├── Test-Execution-Report.md
    └── Test-Summary-Report.md
```

---

## 📈 Progress

**Completed:** API fundamentals, HTTP methods/status codes, request/response, JSON, Postman basics, all 5 HTTP methods, environment variables, test scripts, negative testing, API chaining, and the full API project (test scenarios, cases, bugs, execution, and summary reports drafted).

**In progress:** Advanced/data-driven validation, and full Postman collection execution for the project below.

---

## Applied Project

➡️ [`10-API-Project`](./10-API-Project) — **User Management API Testing Project** (Postman + JSONPlaceholder): 15 test cases, 3 practice defect reports, full execution and summary reporting.

**Status:** Partially Complete — core functional, negative, and validation testing is done; full collection execution and evidence capture are in progress.
