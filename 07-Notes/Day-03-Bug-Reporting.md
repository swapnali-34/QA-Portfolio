# Day 3 - Bug Reporting Fundamentals

---

# 1. What is a Bug (Defect)?

## Definition

A **bug** (also known as a **defect**) is an error, flaw, or unexpected behavior in a software application where the **actual result** does not match the **expected result**.

### Example

**Expected Result:**
A user enters valid login credentials and is successfully logged in.

**Actual Result:**
The Login button does nothing after clicking it.

This difference between the expected and actual result is called a **bug**.

---

## Common Causes of Bugs

- Coding mistakes
- Incorrect business logic
- Missing validations
- Requirement misunderstandings
- Integration issues
- Performance problems

---

# 2. Bug Life Cycle

A bug goes through different stages from the time it is reported until it is closed.

```text
New
 ↓
Assigned
 ↓
Open
 ↓
Fixed
 ↓
Retest
 ↓
Closed
```

### Bug Status Description

| Status | Description |
|---------|-------------|
| **New** | Tester reports a new defect. |
| **Assigned** | The defect is assigned to a developer. |
| **Open** | The developer starts working on the defect. |
| **Fixed** | The developer fixes the issue and marks it as fixed. |
| **Retest** | The tester verifies whether the fix works correctly. |
| **Closed** | The tester confirms the fix and closes the defect. |

### Other Possible Bug Statuses

- Reopened
- Rejected
- Deferred
- Duplicate
- Cannot Reproduce
- Won't Fix

---

# 3. Severity vs Priority

Many beginners confuse these two terms.

## Severity

Severity indicates **how serious the defect is** and how much it impacts the application's functionality.

It is usually decided by the **QA Tester**.

### Severity Levels

- Critical
- Major
- Minor
- Low

### Example

The application crashes after clicking **Pay Now**.

**Severity:** Critical

---

## Priority

Priority indicates **how quickly the defect should be fixed**.

It is usually decided by the **Project Manager**, **Product Owner**, or **Development Lead**.

### Priority Levels

- High
- Medium
- Low

### Example

A spelling mistake on the Home page may have **Low Severity** but **High Priority** if the website is about to go live.

---

## Severity vs Priority Comparison

| Severity | Priority |
|-----------|----------|
| Measures the impact of the defect. | Measures the urgency of fixing the defect. |
| Decided mainly by QA. | Decided mainly by the Project Manager or Product Owner. |
| Focuses on system functionality. | Focuses on business importance. |

---

# 4. Components of a Professional Bug Report

A good bug report helps developers reproduce and fix the issue quickly.

A standard bug report contains the following fields:

| Field | Description |
|--------|-------------|
| Bug ID | Unique identifier of the defect. |
| Bug Title | Short summary of the issue. |
| Module | The feature or module where the defect is found. |
| Severity | Impact of the defect on the application. |
| Priority | Urgency of fixing the defect. |
| Environment | Operating system, browser, device, etc. |
| Preconditions | Conditions that must be met before testing. |
| Steps to Reproduce | Step-by-step instructions to reproduce the issue. |
| Expected Result | The correct behavior of the application. |
| Actual Result | The observed incorrect behavior. |
| Status | Current state of the defect (New, Fixed, Closed, etc.). |

---

# 5. How to Write Industry-Standard Bug Reports

Follow these best practices:

- Write a clear and descriptive bug title.
- Keep the steps simple and easy to follow.
- Mention all necessary preconditions.
- Clearly describe the expected and actual results.
- Assign the correct severity and priority.
- Include screenshots or screen recordings whenever possible.
- Report one defect per bug report.
- Use simple and professional language.
- Ensure the defect is reproducible before reporting it.

---

# Example Bug Report

| Field | Value |
|--------|-------|
| Bug ID | BUG-001 |
| Bug Title | Login button is unresponsive after entering valid credentials |
| Module | Login |
| Severity | Critical |
| Priority | High |
| Environment | Windows 11, Chrome (Latest) |
| Preconditions | User has a valid account. |
| Steps to Reproduce | 1. Open the Login page.<br>2. Enter a valid email.<br>3. Enter a valid password.<br>4. Click the Login button. |
| Expected Result | User should be logged in successfully. |
| Actual Result | Clicking the Login button has no effect. |
| Status | New |

---
