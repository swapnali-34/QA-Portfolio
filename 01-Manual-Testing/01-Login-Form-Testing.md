# Login Form Testing

A standalone manual testing exercise covering a generic login form — applying
structured test design to a feature independent of any single application.

---

## Feature Under Test

A typical login form with two fields (Username/Email, Password) and a
"Login" button.

---

## Test Scenarios

| Scenario ID | Scenario |
|---|---|
| TS-01 | Verify login with valid username and password |
| TS-02 | Verify login with invalid username |
| TS-03 | Verify login with invalid password |
| TS-04 | Verify login with both fields empty |
| TS-05 | Verify login with only username entered |
| TS-06 | Verify login with only password entered |
| TS-07 | Verify password field masks input |
| TS-08 | Verify login with leading/trailing spaces in username |
| TS-09 | Verify case sensitivity of username field |
| TS-10 | Verify case sensitivity of password field |
| TS-11 | Verify account lockout behavior after repeated failed attempts |
| TS-12 | Verify "Forgot Password" link navigates correctly |
| TS-13 | Verify SQL injection attempt is rejected safely |
| TS-14 | Verify login button is disabled until required fields are filled (if applicable) |
| TS-15 | Verify session starts correctly after successful login |

---

## Test Cases

| Test Case ID | Title | Steps | Test Data | Expected Result |
|---|---|---|---|---|
| TC-01 | Valid login | 1. Navigate to login page 2. Enter valid username 3. Enter valid password 4. Click Login | Username: valid_user / Password: Valid@123 | User is logged in and redirected to the dashboard |
| TC-02 | Invalid username | 1. Enter an unregistered username 2. Enter any password 3. Click Login | Username: unknown_user | Error message: "Invalid username or password" |
| TC-03 | Invalid password | 1. Enter a valid username 2. Enter an incorrect password 3. Click Login | Password: WrongPass1 | Error message: "Invalid username or password" |
| TC-04 | Empty fields | 1. Leave both fields blank 2. Click Login | — | Validation error: "Username and password are required" |
| TC-05 | Password masking | 1. Click into password field 2. Type a password | Password: Test@123 | Characters are displayed as dots/asterisks, not plain text |
| TC-06 | Leading/trailing spaces | 1. Enter username with a leading space 2. Enter valid password 3. Click Login | Username: " valid_user" | Login succeeds (spaces trimmed) or a clear validation message is shown — behavior should be defined and consistent |
| TC-07 | SQL injection attempt | 1. Enter `' OR '1'='1` in username field 2. Enter any password 3. Click Login | Username: `' OR '1'='1` | Login is rejected; input is safely handled with no error exposing backend details |
| TC-08 | Account lockout | 1. Enter valid username 2. Enter wrong password 5 times consecutively | Password: WrongPass (x5) | Account is locked or a delay/CAPTCHA is triggered per the defined policy |
| TC-09 | Case sensitivity — username | 1. Enter username in different case than registered 2. Enter valid password 3. Click Login | Username: VALID_USER | Behavior should match the application's defined policy (case-sensitive or not) and be consistent |
| TC-10 | Forgot Password link | 1. Click "Forgot Password" link | — | User is navigated to the password reset flow |

---

## Negative & Edge Case Focus

This exercise specifically emphasizes **negative testing** — since a login
form is a common attack surface, verifying graceful handling of invalid,
malicious, or unexpected input matters as much as verifying the happy path.

Edge cases covered:
- Empty and partially-filled fields
- Case sensitivity behavior
- Injection attempts (SQL injection pattern)
- Repeated failed attempts (lockout/rate-limiting behavior)
- Whitespace handling

---

## Key Learning

A login form looks simple but has a large number of meaningful test
scenarios once positive, negative, security, and usability angles are all
considered — reinforcing why even "simple" features need structured test
design rather than a quick happy-path check.
