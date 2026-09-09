# API Testing with Postman

This section demonstrates my practical learning and hands-on experience with **API Testing using Postman**.

The focus is on understanding REST APIs, HTTP methods, request/response validation, JSON, Postman variables, test scripts, API chaining, and negative testing.

---

## 🛠️ Tools Used

- Postman
- Git
- GitHub
- JSONPlaceholder API

---

## 📚 Topics Covered

### API Fundamentals

- What is an API?
- What is REST?
- API Endpoint
- Request and Response
- HTTP Methods
- HTTP Status Codes
- Headers
- Request Body
- Response Body
- JSON

### Postman

- Creating API requests
- GET requests
- POST requests
- Query Parameters
- Headers
- Request Body
- Environment Variables
- Dynamic Variables
- Postman Test Scripts

### API Validation

- Status code validation
- Response body validation
- Field existence validation
- Exact value validation
- Data type validation
- Header validation
- Array validation
- Record count validation
- Loop-based validation
- Negative testing

### Advanced API Testing

- Dynamic IDs
- API Chaining
- Extracting response values
- Storing values in variables
- Reusing variables between requests

---

## 🧪 Practice API

The following public API is used for learning and practice:

`https://jsonplaceholder.typicode.com`

Example endpoints:

```text
GET /users/1
GET /users/5
GET /posts?userId=2
POST /users
```

---

## 🔄 API Testing Flow

```text
Send Request
     ↓
Receive Response
     ↓
Validate Status Code
     ↓
Validate Headers
     ↓
Validate Response Body
     ↓
Validate Data Types
     ↓
Validate Business Rules
     ↓
PASS / FAIL
```

---

## 🔗 API Chaining

One of the important skills practiced in this section is API chaining.

```text
POST /users
      ↓
Extract ID
      ↓
Store ID in variable
      ↓
GET /users/{{createdUserId}}
      ↓
Validate response
```

Postman environment variables are used to pass dynamic data between requests.

---

## 📁 API Testing Structure

```text
04-API-Testing/
│
├── README.md
│
├── 01-API-Fundamentals.md
├── 02-HTTP-Methods.md
├── 03-HTTP-Status-Codes.md
├── 04-Request-Response.md
├── 05-JSON.md
├── 06-Postman-Basics.md
├── 07-API-Test-Cases.md
├── 08-API-Test-Scripts.md
├── 09-API-Validation.md
│
├── 10-API-Project/
│   ├── README.md
│   ├── Test-Scenarios.md
│   ├── Test-Cases.md
│   ├── Bug-Reports.md
│   ├── Test-Execution-Report.md
│   └── Test-Summary-Report.md
│
└── Postman-Collections/
```

---

## 📈 Learning Progress

### Completed

- API Fundamentals
- HTTP Methods
- HTTP Status Codes
- Request & Response
- JSON Basics
- Postman Basics
- GET Requests
- POST Requests
- PUT Requests
- PATCH Requests
- DELETE Requests
- Query Parameters
- Path Parameters
- Request Headers
- Request Body
- Response Validation
- Postman Test Scripts
- Basic API Assertions
- Negative API Testing
- Postman Variables
- Environment Variables
- Dynamic API Testing
- API Chaining
- API Project — Test Scenarios, Test Cases, and Bug Reports drafted

### Currently Learning

- Advanced API Validation
- Data-driven API Testing
- Completing full Postman collection execution for the API Project

### Upcoming

- Complete remaining API Project test execution
- Finalize API Test Execution Report
- Finalize API Test Summary Report
- Add request/response evidence and screenshots to the project

---

## Applied Project

The concepts covered in this folder — API fundamentals, HTTP methods, status
codes, request/response structure, JSON, Postman basics, test case design,
test scripts, and validation — are applied end-to-end in a real testing
project:

➡️ [`10-API-Project`](./10-API-Project) — **User Management API Testing
Project** (Postman + JSONPlaceholder). Covers test scenarios, detailed test
cases, bug reports, test execution, and test summary reporting.

**Status:** Partially Complete — core functional, negative, and validation
testing is done; full Postman collection execution and evidence capture are
in progress.

---

## 🎯 Objective

The objective of this section is to demonstrate practical API testing skills required for a Software QA Analyst role, including request creation, response validation, test scripting, dynamic data handling, API chaining, and negative testing.
