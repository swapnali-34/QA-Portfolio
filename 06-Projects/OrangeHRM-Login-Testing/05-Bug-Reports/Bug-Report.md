# Bug Report

> **Note:** The following bug reports are **practice examples created for learning and portfolio purposes**. During testing of the OrangeHRM Demo application, no functional defects were identified. These reports demonstrate the format and quality of professional bug documentation.

---

# Bug Report 1

| Field | Details |
|--------|---------|
| Bug ID | BUG-001 |
| Bug Title | Login button remains enabled after multiple rapid clicks |
| Module | Login |
| Severity | Minor |
| Priority | Medium |
| Environment | Windows 11, Google Chrome (Latest) |
| Preconditions | User is on the Login page. |
| Steps to Reproduce | 1. Open the Login page.<br>2. Enter valid credentials.<br>3. Rapidly click the **Login** button multiple times. |
| Expected Result | The Login button should be disabled after the first click until the login process completes. |
| Actual Result | The Login button remains clickable during the login request. *(Practice example)* |
| Status | New |

---

# Bug Report 2

| Field | Details |
|--------|---------|
| Bug ID | BUG-002 |
| Bug Title | Username field accepts leading and trailing spaces |
| Module | Login |
| Severity | Minor |
| Priority | Low |
| Environment | Windows 11, Google Chrome (Latest) |
| Preconditions | User is on the Login page. |
| Steps to Reproduce | 1. Open the Login page.<br>2. Enter spaces before and after the username.<br>3. Enter a valid password.<br>4. Click **Login**. |
| Expected Result | The application should trim unnecessary spaces before validating the username. |
| Actual Result | The username is processed without trimming spaces. *(Practice example)* |
| Status | New |

---

# Bug Report 3

| Field | Details |
|--------|---------|
| Bug ID | BUG-003 |
| Bug Title | Error message remains visible after correcting invalid credentials |
| Module | Login |
| Severity | Minor |
| Priority | Medium |
| Environment | Windows 11, Google Chrome (Latest) |
| Preconditions | User is on the Login page. |
| Steps to Reproduce | 1. Enter an invalid username and password.<br>2. Click **Login**.<br>3. Correct the credentials.<br>4. Observe the error message before logging in again. |
| Expected Result | The previous error message should disappear once the user updates the input or submits valid credentials. |
| Actual Result | The error message remains visible until another login attempt is made. *(Practice example)* |
| Status | New |

---

# Bug Report Summary

| Metric | Count |
|--------|------:|
| Total Bug Reports | 3 |
| Critical | 0 |
| Major | 0 |
| Minor | 3 |
| Cosmetic | 0 |

---

# Notes

- These bug reports are **sample defects created for portfolio and learning purposes**.
- Their purpose is to demonstrate the ability to write clear, structured, and professional bug reports.
- During actual testing of the OrangeHRM Demo Login module, **no functional defects were identified**.
