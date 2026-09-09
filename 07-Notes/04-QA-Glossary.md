# QA Glossary

A quick-reference glossary of common software testing terms, with a short definition and example for each.

---

## Testing Types

| Term | Definition | Example |
|---|---|---|
| **Functional Testing** | Testing that the software does what it's supposed to do, based on requirements | Verifying that clicking "Login" with valid credentials logs the user in |
| **Regression Testing** | Re-testing existing functionality to make sure a new change hasn't broken it | After fixing the checkout bug, re-running cart and payment test cases |
| **Retesting** | Re-running a specific failed test case to confirm a reported bug is fixed | Re-running "Login with valid credentials" after the login bug is fixed |
| **Smoke Testing** | A quick, broad check that critical functions work before deeper testing begins | Confirming the app launches and login works right after a new build |
| **Sanity Testing** | A narrow, focused check after a minor fix, without full regression | Verifying only the password-reset flow after a small fix to that feature |
| **Exploratory Testing** | Unscripted testing where the tester explores the app to find unexpected issues | Randomly navigating a new feature to see if anything breaks |
| **Ad-hoc Testing** | Informal testing without any planning or documentation | Quickly trying random inputs on a form just to see what happens |
| **Integration Testing** | Testing how two or more modules work together | Testing that the checkout module correctly talks to the payment module |
| **System Testing** | Testing the complete, integrated application as a whole | Testing an entire e-commerce site end-to-end before release |
| **User Acceptance Testing (UAT)** | Testing done by the client/end-user to confirm the software meets their needs | The client tries the finished app before formally approving it |
| **Performance Testing** | Testing how the system behaves under expected load | Checking how long a page takes to load with 100 concurrent users |
| **Positive Testing** | Testing with valid input to confirm expected behavior | Logging in with a correct username and password |
| **Negative Testing** | Testing with invalid input to confirm the system handles it gracefully | Logging in with a wrong password and checking for a proper error message |

---

## Test Artifacts

| Term | Definition |
|---|---|
| **Test Plan** | A document outlining the scope, approach, resources, and schedule for testing |
| **Test Scenario** | A high-level description of what to test (e.g. "Verify login functionality") |
| **Test Case** | A detailed, step-by-step procedure with expected results, derived from a test scenario |
| **Test Data** | The specific input values used to execute a test case |
| **Test Script** | A set of instructions (manual or automated) to execute a test |
| **Test Bed / Test Environment** | The hardware/software setup used to execute tests (e.g. a staging server) |
| **Test Harness** | A collection of test scripts, data, and tools used to test a program automatically |
| **Requirement Traceability Matrix (RTM)** | A document mapping requirements to their corresponding test cases, to ensure full coverage |
| **Test Execution Report** | A record of test results (pass/fail) after running test cases |
| **Test Summary Report** | A high-level summary of overall testing activity, coverage, and outcomes at the end of a cycle |

---

## Defect-Related Terms

| Term | Definition |
|---|---|
| **Defect / Bug** | A flaw in the software causing it to behave incorrectly |
| **Severity** | How much a defect impacts the application's functionality |
| **Priority** | How urgently a defect needs to be fixed |
| **Defect Life Cycle** | The stages a defect goes through, from being logged to being closed |
| **Reproducibility** | Whether a defect can be consistently recreated using the same steps |
| **Blocker** | A defect severe enough to stop further testing of a feature |
| **Duplicate Defect** | A defect that has already been reported previously |

---

## Process & Methodology Terms

| Term | Definition |
|---|---|
| **SDLC** | Software Development Life Cycle — the overall process of building software |
| **STLC** | Software Testing Life Cycle — the process specific to testing |
| **Agile** | An iterative approach to software development in short cycles (sprints) |
| **Scrum** | A specific framework for implementing Agile, with defined roles and ceremonies |
| **Sprint** | A fixed time period (commonly 1–2 weeks) in which a set of work is completed |
| **Definition of Done (DoD)** | Criteria that must be met before a task is considered complete |
| **Acceptance Criteria** | Specific, testable conditions a feature must meet to be accepted |

---

## API Testing Terms

| Term | Definition |
|---|---|
| **REST API** | An API that follows REST architecture principles, using HTTP methods (GET, POST, PUT, DELETE) |
| **Endpoint** | A specific URL where an API can be accessed |
| **HTTP Status Code** | A code returned by the server indicating the result of a request (e.g. 200 OK, 404 Not Found) |
| **Payload** | The actual data sent in the body of an API request or response |
| **JSON** | A lightweight data format commonly used in API requests/responses |
| **API Chaining** | Using data from one API response as input to a subsequent API request |

---

## SQL / Database Testing Terms

| Term | Definition |
|---|---|
| **Database Validation** | Verifying that data displayed in the UI matches what's stored in the database |
| **NULL Value** | A missing or undefined value in a database field |
| **Duplicate Record** | Two or more rows in a table with identical or conflicting data that shouldn't both exist |
| **Orphan Record** | A record referencing another table's key that no longer exists (a broken relationship) |
| **JOIN** | An SQL operation combining rows from two or more tables based on a related column |
