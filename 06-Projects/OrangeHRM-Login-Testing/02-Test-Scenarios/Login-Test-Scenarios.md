# Login Test Scenarios

## Project

OrangeHRM Demo

## Module

Login

---

| Scenario ID | Test Scenario |
|-------------|---------------|
| TS-001 | Verify the Login page loads successfully. |
| TS-002 | Verify the Username field is displayed. |
| TS-003 | Verify the Password field is displayed. |
| TS-004 | Verify the Login button is displayed and clickable. |
| TS-005 | Verify the user can log in with valid credentials. |
| TS-006 | Verify an error message is displayed for an invalid password. |
| TS-007 | Verify an error message is displayed for an invalid username. |
| TS-008 | Verify validation when the Username field is left empty. |
| TS-009 | Verify validation when the Password field is left empty. |
| TS-010 | Verify validation when both Username and Password fields are empty. |
| TS-011 | Verify the password is masked while typing. |
| TS-012 | Verify the user can log out successfully. |
| TS-013 | Verify the browser refresh behavior after successful login. |
| TS-014 | Verify the browser Back button behavior after logout. |
| TS-015 | Verify login using the Enter key instead of clicking the Login button. |
| TS-016 | Verify the application accepts copied and pasted credentials. |
| TS-017 | Verify the Login page handles very long input values. |
| TS-018 | Verify login with special characters in the Username field. |
| TS-019 | Verify login with special characters in the Password field. |
| TS-020 | Verify the application handles multiple consecutive invalid login attempts correctly. |

---

## Summary

| Total Test Scenarios | 20 |
|----------------------|----:|
| Smoke Testing | 6 |
| Functional Testing | 16 |

*Smoke (TS-001–005, checking the page is up and basic login works) and
Functional (TS-005–020, full behavior including validation, security-style
input, and session handling) overlap on TS-005 by design — it's checked
both as a quick smoke gate and in full functional depth.*

In addition to these 20 scripted scenarios, **unscripted exploratory
testing** was performed to probe behavior these scenarios don't explicitly
cover — see the Exploratory Testing section in
[`04-Test-Execution/Test-Execution-Report.md`](../04-Test-Execution/Test-Execution-Report.md).
Exploratory testing is unscripted by nature, so it isn't counted as a
fixed number of "test cases" the way Smoke and Functional are.

---

## Conclusion

These test scenarios cover the core functionality of the OrangeHRM Login module, including positive, negative, validation, usability, and security-style input scenarios, supplemented by unscripted exploratory testing.
