# Google Login - Test Scenarios

## Objective

The objective of this document is to identify and list high-level test scenarios for the Google Login page. These scenarios help ensure that the login functionality works correctly under different conditions.

| Scenario ID | Test Scenario |
|-------------|---------------|
| TS-001 | Verify the user can log in with a valid email and password. |
| TS-002 | Verify an error message is displayed when an invalid password is entered. |
| TS-003 | Verify an error message is displayed when an unregistered email address is entered. |
| TS-004 | Verify the system displays a validation message when the email field is left empty. |
| TS-005 | Verify the system displays a validation message when the password field is left empty. |
| TS-006 | Verify the login page validates an incorrectly formatted email address (e.g., `userexample.com`). |
| TS-007 | Verify the **Forgot Password** option redirects the user to the account recovery page. |
| TS-008 | Verify the user is prompted for two-factor authentication (2FA) when it is enabled on the account. |
| TS-009 | Verify the login session remains valid or behaves correctly after refreshing the browser during the login process. |
| TS-010 | Verify the user session times out after a period of inactivity and requires the user to log in again. |
| TS-011 | Verify the login page loads successfully in different supported browsers. |
| TS-012 | Verify the user can log in using a mobile browser. |
| TS-013 | Verify the **Show Password** option displays and hides the password correctly. |
| TS-014 | Verify the **Next** button remains disabled or shows a validation message when the email field is empty. |
| TS-015 | Verify the login page handles multiple consecutive failed login attempts appropriately. |

## Author

**Name:** Swapnali Shitole

**Project:** QA Portfolio

**Module:** Google Login Page

**Document Type:** Test Scenarios
