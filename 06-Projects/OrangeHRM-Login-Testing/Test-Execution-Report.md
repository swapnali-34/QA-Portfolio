# OrangeHRM Demo - Test Execution Report

## Project Information

| Field | Details |
|--------|---------|
| Project | OrangeHRM Demo |
| Module | Login |
| Tester | Swapnali Shitole |
| Test Type | Smoke Testing, Functional Testing & Exploratory Testing |
| Environment | Windows 11, Google Chrome (Latest) |
| Test Date | August 2, 2026 |
| Application URL | https://opensource-demo.orangehrmlive.com/ |

---

# Test Environment

- Operating System: Windows 11
- Browser: Google Chrome (Latest)
- Internet Connection: Stable
- Test Type: Manual Testing

---

# Test Credentials

| Username | Password |
|-----------|----------|
| Admin | admin123 |

---

# Smoke Testing

| Test ID | Test Scenario | Expected Result | Actual Result | Status |
|----------|---------------|-----------------|---------------|--------|
| ST-001 | Login page loads successfully | Login page should load without errors | Login page loaded successfully | Pass |
| ST-002 | Username field is visible | Username field should be displayed | Username field displayed | Pass |
| ST-003 | Password field is visible | Password field should be displayed | Password field displayed | Pass |
| ST-004 | Login button is clickable | Login button should be clickable | Login button is clickable | Pass |
| ST-005 | Login with valid credentials | User should be logged in successfully | User logged in successfully | Pass |
| ST-006 | Dashboard loads after login | Dashboard should be displayed | Dashboard loaded successfully | Pass |

---

# Functional Testing

| Test ID | Test Scenario | Expected Result | Actual Result | Status |
|----------|---------------|-----------------|---------------|--------|
| FT-001 | Valid username + valid password | User should log in successfully | User logged in successfully | Pass |
| FT-002 | Valid username + invalid password | Error message should be displayed | "Invalid credentials" message displayed | Pass |
| FT-003 | Invalid username + valid password | Error message should be displayed | "Invalid credentials" message displayed | Pass |
| FT-004 | Empty username | Validation message should be displayed | Required field validation displayed | Pass |
| FT-005 | Empty password | Validation message should be displayed | Required field validation displayed | Pass |
| FT-006 | Both fields empty | Validation messages should be displayed | Validation messages displayed | Pass |
| FT-007 | Password masking | Password should remain hidden | Password remained masked | Pass |
| FT-008 | Logout | User should be redirected to Login page | Successfully redirected | Pass |
| FT-009 | Browser refresh after login | User session should remain active | Session remained active | Pass |
| FT-010 | Browser Back button after logout | User should not access Dashboard after logout | Login page displayed; dashboard inaccessible | Pass |

---

# Exploratory Testing

## Areas Explored

- Login using Enter key
- Copy and paste username/password
- Refresh page during login
- Open application in multiple browser tabs
- Browser Back button behavior
- Resize browser window
- Enter very long usernames/passwords
- Enter special characters
- Multiple failed login attempts
- Rapid clicking of the Login button

---

# Exploratory Testing Results

| Activity | Observation |
|----------|-------------|
| Press Enter instead of clicking Login | Login worked successfully. |
| Copy and paste credentials | Credentials were accepted successfully. |
| Refresh page while logging in | Page refreshed correctly without errors. |
| Open multiple browser tabs | Session remained consistent across tabs. |
| Browser Back button | Protected pages were not accessible after logout. |
| Resize browser window | Layout remained responsive. |
| Very long inputs | System handled input without crashing. |
| Special characters | Invalid credentials message displayed appropriately. |
| Rapid clicking on Login | No duplicate login requests observed. |
| Multiple invalid login attempts | Application continued to display appropriate error messages. |

---

# Defects Identified

No functional defects were identified during this testing session.

---

# Test Summary

| Metric | Value |
|--------|------:|
| Total Smoke Tests | 6 |
| Passed | 6 |
| Failed | 0 |
| Total Functional Tests | 10 |
| Passed | 10 |
| Failed | 0 |
| Exploratory Activities | 10 |
| Defects Found | 0 |

---

# Conclusion

Smoke Testing confirmed that the Login module was stable and ready for detailed testing.

Functional Testing verified that the Login module behaved correctly for valid, invalid, and boundary input scenarios.

Exploratory Testing did not reveal any functional defects. The application handled various user interactions, browser behaviors, and invalid inputs as expected.

Overall, the Login module performed successfully under the tested scenarios.
