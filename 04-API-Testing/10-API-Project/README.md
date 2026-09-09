# User Management API Testing Project

A practical API testing project created to demonstrate **Software QA / API Testing skills using Postman**.

The project focuses on functional testing, negative testing, JSON response validation, data type validation, HTTP status-code validation, test case design, defect reporting, and test execution reporting.

> Part of [`04-API-Testing`](../) — see the parent folder for API
> fundamentals, HTTP methods, status codes, JSON, Postman basics, and API
> validation theory that this project applies practically.

---

## 📌 Project Overview

| Field | Details |
|---|---|
| **Project** | User Management API |
| **API** | JSONPlaceholder |
| **Base URL** | `https://jsonplaceholder.typicode.com` |
| **Testing Tool** | Postman |
| **Environment** | `QA-API-Environment` |
| **Test Type** | API Functional, Negative, Validation and Data Type Testing |
| **Project Status** | Partially Complete |
| **API Type** | REST API / Mock API |

---

## 🎯 Project Objectives

The objective of this project is to demonstrate how a QA Analyst approaches API testing from requirements through test execution and reporting.

The project covers:

- API test scenario creation
- Detailed API test case design
- Positive testing
- Negative testing
- HTTP method validation
- HTTP status code validation
- JSON response validation
- Required field validation
- Data type validation
- Response structure validation
- Request/response validation
- Postman test scripts
- Environment variables
- Dynamic data handling
- API chaining concepts
- Defect reporting
- Test execution reporting
- Test summary reporting

---

## 🔗 API Endpoints Tested

### 1. Get All Users

```http
GET /users
```

**Purpose:** Retrieve the list of users.

**Expected Behavior**
- HTTP 200 OK
- Response should be JSON
- Response should contain an array
- Each user should contain required fields

**Required fields:** `id`, `name`, `username`, `email`

---

### 2. Get User by ID

```http
GET /users/{id}
```

**Example**
```http
GET /users/1
```

**Expected Behavior**
- HTTP 200 OK for a valid user
- Response should contain a user object
- Returned ID should match requested ID
- Required fields should be present
- Data types should be correct

---

### 3. Get Non-Existent User

```http
GET /users/9999
```

**Expected Behavior**
- HTTP 404 Not Found
- The response should not contain a valid user object

---

### 4. Get Users Using Query Parameter

```http
GET /users?username=Bret
```

**Purpose:** Validate user retrieval using query parameters.

---

### 5. Create User

```http
POST /users
```

**Sample Request**
```json
{
    "name": "Swapnali QA",
    "username": "swapnali_qa",
    "email": "swapnali.qa@example.com"
}
```

**Expected Behavior**
- HTTP 201 Created
- Response should contain generated ID
- ID should be numeric
- Submitted values should be returned

---

### 6. Update User

```http
PUT /users/{id}
```

**Purpose:** Validate complete user update behavior.

**Expected Behavior**
- HTTP 200 OK
- Updated values should be returned
- User ID should remain correct

---

### 7. Partial Update User

```http
PATCH /users/{id}
```

**Sample Request**
```json
{
    "email": "updated.qa@example.com"
}
```

**Expected Behavior**
- HTTP 200 OK
- Email should be updated
- Unspecified fields should remain unchanged where the API contract requires it

---

### 8. Delete User

```http
DELETE /users/{id}
```

**Expected Behavior**
- Successful HTTP response
- Response should match the API contract for deletion

---

## 🧪 Testing Approach

The testing process followed a structured QA workflow:

```
Requirements
     ↓
Test Scenarios
     ↓
Test Cases
     ↓
Postman Requests
     ↓
Test Scripts / Assertions
     ↓
Positive Testing
     ↓
Negative Testing
     ↓
Response Validation
     ↓
Defect Reporting
     ↓
Test Execution Report
     ↓
Test Summary Report
```

---

## 📋 Test Coverage

The project contains 15 API test cases covering the following areas:

| Testing Area | Test Cases |
|---|---|
| User Retrieval | 6 |
| User Creation | 4 |
| User Update | 2 |
| User Deletion | 1 |
| Performance | 1 |
| **Total** | **15** |

---

## 📊 Test Execution Summary

| Status | Count |
|---|---|
| PASS | 10 |
| FAIL | 0 |
| BLOCKED / CONTRACT NOT DEFINED | 3 |
| NOT EXECUTED | 2 |
| **Total** | **15** |

**Pass Rate: 83.3%**

The pass rate is calculated using the 10 passed test cases out of 12 executed and objectively verifiable test cases.

Blocked cases are excluded because the expected behavior was not sufficiently defined.

---

## 🔍 Validation Areas

### HTTP Status Code Validation

The project validates expected HTTP status codes such as:

- `200 OK`
- `201 Created`
- `404 Not Found`

Status codes are not evaluated in isolation. A successful API test requires 
the actual response to match the expected behavior defined by the API contract.

### JSON Validation

Responses are validated for:

- Valid JSON
- Correct object/array structure
- Required fields
- Field values
- Nested objects
- Data types

### Data Type Validation

Example expected structure:

| Field | Type |
|---|---|
| `id` | Number |
| `name` | String |
| `username` | String |
| `email` | String |

Example assertion:

```javascript
pm.expect(data.id).to.be.a("number");
pm.expect(data.name).to.be.a("string");
pm.expect(data.email).to.be.a("string");
```

### Required Field Validation

The following user fields are validated: `id`, `name`, `username`, `email`.

The test cases verify whether mandatory fields exist and contain appropriate values.

---

## ❌ Negative Testing

Negative scenarios were included to evaluate API behavior with invalid conditions.

Examples:

- Non-existent user ID
- Invalid user ID
- Non-numeric ID
- Missing name
- Missing email
- Invalid email format
- Invalid request data

**Important QA Principle**

A negative test should only be marked PASS or FAIL when the expected behavior is clearly defined.

For example:

```
Expected: 400 Bad Request
Actual:   400 Bad Request
Result:   PASS
```

If the API contract does not define the expected behavior:

```
Result: BLOCKED / CONTRACT NOT DEFINED
```

---

## 🧪 Postman Test Scripts

Postman scripts were used to automate response validation.

**Example — status code check**
```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```

**Example — response validation**
```javascript
const data = pm.response.json();

pm.test("User ID is a number", function () {
    pm.expect(data.id).to.be.a("number");
});

pm.test("Name exists", function () {
    pm.expect(data.name).to.exist;
});

pm.test("Email exists", function () {
    pm.expect(data.email).to.exist;
});
```

---

## 🔄 API Chaining

The project also includes API chaining concepts using Postman environment variables.

**Planned workflow**
```
POST Create User
        ↓
Extract User ID
        ↓
Store ID in Environment Variable
        ↓
GET User
        ↓
PUT User
        ↓
GET Updated User
        ↓
PATCH Email
        ↓
GET Updated User
        ↓
DELETE User
```

**Example environment variable:** `createdUserId`

**Example extraction**
```javascript
const data = pm.response.json();

pm.environment.set("createdUserId", data.id);
```

The dynamic ID can then be used in subsequent requests:

```
{{baseUrl}}/users/{{createdUserId}}
```

---

## 🐞 Defect Reporting

The project includes three practice defect reports.

| Bug ID | Description | Severity | Priority | Classification |
|---|---|---|---|---|
| BUG-API-001 | User ID returned as String instead of Number | High | High | Hypothetical / Contract |
| BUG-API-002 | Invalid email accepted during user creation | Medium | High | Hypothetical / Validation |
| BUG-API-003 | PATCH modifies unspecified fields | High | High | Hypothetical / Data Integrity |

> **Important Note:** These defects are QA practice examples based on defined testing contracts. They should not be represented as confirmed production defects in JSONPlaceholder unless the behavior is actually reproduced and supported by the API contract.

---

## 📁 Project Files

```
10-API-Project/
│
├── README.md
├── Test-Scenarios.md
├── Test-Cases.md
├── Bug-Reports.md
├── Test-Execution-Report.md
└── Test-Summary-Report.md
```

---

## 📄 Project Documentation

### Test Scenarios — `Test-Scenarios.md`
Contains high-level scenarios covering: user retrieval, user creation, user update, partial update, user deletion, negative testing, validation, data type checking.

### Test Cases — `Test-Cases.md`
Contains detailed API test cases with: Test Case ID, Requirement, API Method, Endpoint, Preconditions, Test Data, Steps, Expected Result, Actual Result, Status.

### Bug Reports — `Bug-Reports.md`
Contains structured API defect reports including: Bug ID, Title, Severity, Priority, Environment, Preconditions, Steps to reproduce, Test data, Expected result, Actual result, Impact, Suggested fix, Defect lifecycle.

### Test Execution Report — `Test-Execution-Report.md`
Contains: test execution summary, individual test results, PASS/BLOCKED/NOT EXECUTED status, negative testing results, validation results, defect status, execution metrics, risks and limitations, final execution conclusion.

### Test Summary Report — `Test-Summary-Report.md`
Contains: executive summary, testing objectives, scope, test coverage, execution metrics, functional testing summary, negative testing summary, data validation, defect summary, API chaining assessment, risks and limitations, recommendations, final project status.

---

## 🛠️ Tools & Technologies

| Tool / Technology | Usage |
|---|---|
| Postman | API testing and automation |
| REST API | API architecture tested |
| JSON | Request/response data format |
| JavaScript | Postman test scripts |
| Git | Version control |
| GitHub | QA portfolio and project documentation |
| Markdown | Test documentation |

---

## ⚠️ JSONPlaceholder Limitations

JSONPlaceholder is a mock API intended for testing and learning. 
Therefore, its behavior should not be interpreted as equivalent to a production backend.

Important limitations include:

- POST requests do not represent real persistent database creation
- PUT/PATCH operations should not be treated as proof of persistent database updates
- DELETE responses do not prove permanent deletion from a production database
- Business validation rules are limited
- Authentication is not implemented
- Authorization testing is not applicable
- Production performance SLAs are not defined

These limitations are explicitly considered while evaluating the test results.

---

## 🔐 Authentication

Authentication testing is not included in the actual JSONPlaceholder project execution 
because the API does not provide real authentication.

Authentication concepts were practiced separately using scenarios such as:

- Valid token
- Invalid token
- Missing token
- Expired token
- Empty token
- Malformed token
- Wrong authentication scheme
- Insufficient permissions

---

## 📈 QA Skills Demonstrated

This project demonstrates practical knowledge of:

**API Testing**
REST API testing (GET, POST, PUT, PATCH, DELETE) · Query parameters · Path parameters · Request bodies · Headers · HTTP methods

**API Validation**
HTTP status codes · JSON structure · Required fields · Data types · Field values · Arrays · Objects · Nested JSON · Negative validation

**Postman**
Collections · Requests · Environment variables · Dynamic variables · Test scripts · Assertions · Response parsing · API chaining

**QA Documentation**
Test scenarios · Test cases · Bug reports · Test execution reports · Test summary reports · Test metrics

---

## 🎓 Key QA Learning

One of the most important principles demonstrated by this project is:

```
HTTP Status Code  ≠  Complete API Validation
```

For example, an API returning `200 OK` does not automatically mean the test has passed.

The QA Analyst must also verify:

```
Status Code + Response Structure + Required Fields + Data Types + Returned Values + Business Rules + API Contract
```

Only when the actual behavior matches the expected behavior should the test be marked PASS.

---

## 📌 Current Project Status

**Project Status: PARTIALLY COMPLETE**

### ✅ Completed
- Test Scenarios
- Test Cases
- Bug Reports
- Core API Functional Testing
- Response Validation
- Data Type Validation
- Negative Test Design
- Test Execution Documentation
- Test Summary Documentation
- Postman API Testing Practice
- Environment Variables
- Dynamic Data Extraction
- API Chaining Practice

### ⏳ Pending
- Complete Postman project collection execution
- Complete remaining negative test execution
- Execute invalid email validation
- Complete API chaining execution within the project collection
- Measure response time against a defined threshold
- Perform before/after validation for persistent update scenarios
- Add request/response evidence and screenshots
- Update final execution results after pending tests are completed

---

## 🏁 Final Assessment

The project demonstrates an end-to-end API testing approach using Postman, from test scenario design through execution and reporting.

It demonstrates practical QA skills in:

API Testing + Test Case Design + Negative Testing + JSON Validation + Data Type Validation + Postman Automation + API Chaining + Defect Reporting + Test Reporting

The project can be further strengthened by completing the pending Postman collection execution and adding execution evidence.
