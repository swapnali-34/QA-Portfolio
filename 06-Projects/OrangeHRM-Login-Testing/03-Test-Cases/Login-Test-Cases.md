# Login Test Cases

## Project

**Application:** OrangeHRM Demo

**Module:** Login

**Testing Type:** Manual Testing

---

| TC ID | Test Scenario | Test Case Description | Preconditions | Test Steps | Test Data | Expected Result | Actual Result | Status |
|------|---------------|-----------------------|---------------|------------|-----------|-----------------|---------------|--------|
| **TC-001** | Verify the Login page loads successfully. | Verify that the OrangeHRM Login page opens without errors. | User has internet access and the application URL is available. | 1. Open Google Chrome.<br>2. Navigate to the OrangeHRM Demo URL.<br>3. Wait for the page to load. | URL: https://opensource-demo.orangehrmlive.com/ | The Login page should load successfully without any errors. | Login page loaded successfully | PASS |
| **TC-002** | Verify the Username field is displayed. | Verify that the Username input field is visible on the Login page. | User is on the Login page. | 1. Open the Login page.<br>2. Observe the Username field. | N/A | The Username input field should be visible and enabled. | Username field displayed | PASS |
| **TC-003** | Verify the Password field is displayed. | Verify that the Password input field is visible on the Login page. | User is on the Login page. | 1. Open the Login page.<br>2. Observe the Password field. | N/A | The Password input field should be visible and enabled. | Password field displayed | PASS |
| **TC-004** | Verify the Login button is displayed and clickable. | Verify that the Login button is visible and responds to user clicks. | User is on the Login page. | 1. Open the Login page.<br>2. Locate the Login button.<br>3. Click the Login button. | N/A | The Login button should be visible, enabled, and clickable. | Login button clicked successfully | PASS |
| **TC-005** | Verify the user can log in with valid credentials. | Verify that a registered user can successfully log in using valid credentials. | User is on the Login page. | 1. Enter a valid username.<br>2. Enter a valid password.<br>3. Click the Login button. | Username: **Admin**<br>Password: **admin123** | User should be successfully logged in and redirected to the Dashboard. | Login successful and Dashboard loaded successfully | PASS |
| **TC-006** | Verify an error message is displayed for an invalid password. | Verify that an appropriate error message is displayed when an incorrect password is entered. | User is on the Login page. | 1. Enter a valid username.<br>2. Enter an invalid password.<br>3. Click the Login button. | Username: **Admin**<br>Password: **WrongPassword** | The application should display an **"Invalid credentials"** message and prevent login. | Invalid credentials message displayed successfully | PASS |
| **TC-007** | Verify an error message is displayed for an invalid username. | Verify that an appropriate error message is displayed when an incorrect username is entered. | User is on the Login page. | 1. Enter an invalid username.<br>2. Enter a valid password.<br>3. Click the Login button. | Username: **WrongUser**<br>Password: **admin123** | The application should display an **"Invalid credentials"** message and prevent login. | Invalid credentials message displayed successfully | PASS |
| **TC-008** | Verify validation when the Username field is left empty. | Verify that the Username field is mandatory. | User is on the Login page. | 1. Leave the Username field blank.<br>2. Enter a valid password.<br>3. Click the Login button. | Username: **<Leave Blank>**<br>Password: **admin123** | A validation message indicating that the Username is required should be displayed. | Required validation message displayed successfully | PASS |
| **TC-009** | Verify validation when the Password field is left empty. | Verify that the Password field is mandatory. | User is on the Login page. | 1. Enter a valid username.<br>2. Leave the Password field blank.<br>3. Click the Login button. | Username: **Admin**<br>Password: **<Leave Blank>** | A validation message indicating that the Password is required should be displayed. | Required validation message displayed successfully | PASS |
| **TC-010** | Verify validation when both Username and Password fields are empty. | Verify that both fields are mandatory before allowing login. | User is on the Login page. | 1. Leave the Username field blank.<br>2. Leave the Password field blank.<br>3. Click the Login button. | Username: **<Leave Blank>**<br>Password: **<Leave Blank>** | Validation messages should be displayed for both required fields, and login should not proceed. | Required validation message displayed successfully | PASS |
| **TC-011** | Verify the password is masked while typing. | Verify that the password entered by the user is hidden from view. | User is on the Login page. | 1. Enter a valid username.<br>2. Click the Password field.<br>3. Type the password.<br>4. Observe the password field. | Username: **Admin**<br>Password: **admin123** | The password should be displayed as masked characters (● or *), protecting it from being viewed. | Password masked correctly | PASS |
| **TC-012** | Verify the user can log out successfully. | Verify that a logged-in user can successfully log out of the application. | User is logged into the application. | 1. Click the user profile icon.<br>2. Click the **Logout** option. | Username: **Admin**<br>Password: **admin123** | The user should be logged out successfully and redirected to the Login page. | User logged out and redirected to login page. | PASS |
| **TC-013** | Verify browser refresh behavior after successful login. | Verify that refreshing the browser after login does not terminate the active session. | User is logged into the Dashboard. | 1. Log in successfully.<br>2. Press **F5** or click the browser Refresh button.<br>3. Observe the application behavior. | Username: **Admin**<br>Password: **admin123** | The Dashboard should reload successfully, and the user session should remain active. | Session remained active | PASS |
| **TC-014** | Verify browser Back button behavior after logout. | Verify that protected pages cannot be accessed after logging out using the browser Back button. | User has successfully logged out. | 1. Log in successfully.<br>2. Log out.<br>3. Click the browser Back button. | Username: **Admin**<br>Password: **admin123** | The application should not display protected pages and should redirect the user to the Login page. | Login page displayed | PASS |
| **TC-015** | Verify login using the Enter key instead of clicking the Login button. | Verify that pressing the **Enter** key submits the login form. | User is on the Login page. | 1. Enter a valid username.<br>2. Enter a valid password.<br>3. Press the **Enter** key. | Username: **Admin**<br>Password: **admin123** | The user should be logged in successfully without clicking the Login button. | Login successful | PASS |
| **TC-016** | Verify the application accepts copied and pasted credentials. | Verify that users can copy and paste the username and password into their respective fields. | User is on the Login page. | 1. Copy the username.<br>2. Paste it into the Username field.<br>3. Copy the password.<br>4. Paste it into the Password field.<br>5. Click the Login button. | Username: **Admin**<br>Password: **admin123** | The application should accept pasted credentials and log the user in successfully. | Login successful | PASS |
| **TC-017** | Verify the Login page handles very long input values. | Verify that the application handles excessively long usernames and passwords without crashing or behaving unexpectedly. | User is on the Login page. | 1. Enter a username with more than 100 characters.<br>2. Enter a password with more than 100 characters.<br>3. Click the Login button. | Username: Long string (100+ characters)<br>Password: Long string (100+ characters) | The application should handle the input gracefully by displaying an appropriate error message or rejecting the login request without crashing. | Login rejected successfully | PASS |
| **TC-018** | Verify login with special characters in the Username field. | Verify that the application correctly validates special characters entered in the Username field. | User is on the Login page. | 1. Enter special characters in the Username field.<br>2. Enter a valid password.<br>3. Click the Login button. | Username: **@#$%^&***<br>Password: **admin123** | The application should reject the login attempt and display an appropriate error message. | Rejected login and error message displayed successfully. | PASS |
| **TC-019** | Verify login with special characters in the Password field. | Verify that the application correctly handles special characters entered in the Password field. | User is on the Login page. | 1. Enter a valid username.<br>2. Enter special characters in the Password field.<br>3. Click the Login button. | Username: **Admin**<br>Password: **@#$%^&*** | The application should reject the login attempt and display an **"Invalid credentials"** message without crashing. | Rejected login and Invalid credentials message displayed successfully. | PASS |
| **TC-020** | Verify the application handles multiple consecutive invalid login attempts correctly. | Verify that repeated invalid login attempts are handled securely without causing application errors. | User is on the Login page. | 1. Enter a valid username.<br>2. Enter an incorrect password.<br>3. Click the Login button.<br>4. Repeat the invalid login attempt five times.<br>5. Observe the application behavior. | Username: **Admin**<br>Password: **WrongPassword** | The application should display an **"Invalid credentials"** message for each failed attempt and continue functioning normally without crashing. | Rejected login and Invalid credentials message displayed successfully. | PASS |

---

## Test Case Summary

| Category | Count |
|----------|------:|
| Total Test Cases | 20 |
| Positive Test Cases | 5 |
| Negative Test Cases | 11 |
| Validation Test Cases | 4 |
| Execution Status | PASS |

---

## Notes

- These test cases cover the complete Login module, including positive, negative, validation, usability, and exploratory scenarios.
- The **Actual Result** and **Status** fields should be updated during the test execution phase.
- Any failed test case should be documented in the **Bug Report** with complete reproduction steps and supporting evidence.
