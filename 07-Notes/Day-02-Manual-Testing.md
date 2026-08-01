# Day 2 - Manual Testing Fundamentals

# 1. What is Manual Testing?

## Definition

**Manual Testing** is the process of testing software manually without using automation tools. A tester executes test cases, compares the actual results with the expected results, and identifies defects.

### Purpose

- Verify application functionality.
- Identify defects before software is released.
- Ensure the application meets business requirements.
- Improve software quality.

---

## Advantages of Manual Testing

- Easy to learn for beginners.
- Suitable for exploratory and usability testing.
- No programming knowledge required.
- Cost-effective for small projects.

---

## Limitations of Manual Testing

- Time-consuming.
- Repetitive tasks can become tedious.
- Human errors are possible.
- Not suitable for large regression test suites.

---

# 2. Types of Software Testing

## Functional Testing

Verifies that each feature works according to the requirements.

**Example:**
Checking whether a user can successfully log in using valid credentials.

---

## Non-Functional Testing

Evaluates aspects other than functionality, such as:

- Performance
- Security
- Usability
- Compatibility
- Reliability

**Example:**
Checking whether the website loads within 3 seconds.

---

# 3. What is a Test Scenario?

## Definition

A **Test Scenario** is a high-level description of what needs to be tested.

It describes **what** should be tested without including detailed steps.

### Example

**Scenario ID:** TS-001

**Scenario:**
Verify the user can log in with valid credentials.

---

## Characteristics of a Good Test Scenario

- Simple and clear
- Covers one functionality
- Easy to understand
- Based on business requirements

---

# 4. What is a Test Case?

## Definition

A **Test Case** is a detailed document that describes how to verify a specific functionality.

It contains:

- Preconditions
- Test steps
- Test data
- Expected result
- Actual result
- Status

### Example

**Test Case ID:** TC-001

**Scenario:** Verify user login with valid credentials.

**Expected Result:**
The user should successfully log in.

---

# 5. Components of a Test Case

A professional test case usually contains the following fields:

| Field | Description |
|--------|-------------|
| Test Case ID | Unique identifier for the test case |
| Test Scenario | High-level testing objective |
| Test Case Description | Brief description of the purpose |
| Preconditions | Conditions required before execution |
| Test Steps | Step-by-step execution instructions |
| Test Data | Input values used during testing |
| Expected Result | Correct system behavior |
| Actual Result | Observed behavior after execution |
| Status | Execution status (Pass, Fail, Not Executed) |

---

# 6. Test Scenario vs Test Case

| Test Scenario | Test Case |
|---------------|-----------|
| High-level description | Detailed testing document |
| Describes **what** to test | Describes **how** to test |
| Covers one feature | Covers detailed execution steps |
| Created before test cases | Created after test scenarios |
| Less detailed | Highly detailed |

### Example

**Test Scenario**

Verify the user can log in with valid credentials.

**Test Case**

1. Open the Login page.
2. Enter a valid email.
3. Enter a valid password.
4. Click the **Login** button.
5. Verify that the user is redirected to the home page.

---

# 7. Best Practices for Writing Test Cases

- Write one objective per test case.
- Use clear and simple language.
- Include all required preconditions.
- Write easy-to-follow steps.
- Use realistic test data.
- Clearly define the expected result.
- Keep test cases independent.
- Assign unique test case IDs.
- Review test cases before execution.

---

# Example Test Case

| Field | Value |
|--------|-------|
| Test Case ID | TC-001 |
| Test Scenario | Verify the user can log in with a valid email and password |
| Test Case Description | Verify that a registered user can successfully log in using valid credentials |
| Preconditions | User has a valid Google account |
| Test Steps | 1. Open the Login page.<br>2. Enter a valid email.<br>3. Enter a valid password.<br>4. Click the **Login** button. |
| Test Data | Email: `testuser@gmail.com`<br>Password: `ValidPassword123` |
| Expected Result | User should successfully log in and be redirected to the home page. |
| Actual Result | N/A |
| Status | Not Executed |

---
