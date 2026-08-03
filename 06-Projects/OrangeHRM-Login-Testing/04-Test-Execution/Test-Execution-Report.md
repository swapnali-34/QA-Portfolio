# Test Execution Report

## Project Information

| Field | Details |
|--------|---------|
| Project Name | OrangeHRM Login Testing |
| Application | OrangeHRM Demo |
| Module | Login |
| Tester | Swapnali Shitole |
| Testing Type | Manual Testing |
| Test Execution Date | August 03, 2026 |
| Environment | Windows 11, Google Chrome (Latest) |
| Application URL | https://opensource-demo.orangehrmlive.com/ |

---

# Test Objective

The objective of this test execution is to verify that the Login module of the OrangeHRM Demo application functions correctly under different input conditions and user actions.

Testing includes:

- Smoke Testing
- Functional Testing
- Exploratory Testing

---

# Test Environment

| Item | Details |
|------|---------|
| Operating System | Windows 11 |
| Browser | Google Chrome (Latest) |
| Internet Connection | Stable |
| Testing Method | Manual Testing |

---

# Test Credentials

| Username | Password |
|-----------|----------|
| Admin | admin123 |

---

# Smoke Test Execution

| Test ID | Test Scenario | Expected Result | Actual Result | Status |
|----------|---------------|-----------------|---------------|--------|
| ST-001 | Login page loads successfully | Login page loads without errors | Login page loaded successfully | Pass |
| ST-002 | Username field is visible | Username field is displayed | Username field displayed | Pass |
| ST-003 | Password field is visible | Password field is displayed | Password field displayed | Pass |
| ST-004 | Login button is clickable | Login button responds to clicks | Login button clicked successfully | Pass |
| ST-005 | Login with valid credentials | User logs in successfully | Login successful | Pass |
| ST-006 | Dashboard loads after login | Dashboard is displayed | Dashboard loaded successfully | Pass |

---

# Functional Test Execution

| Test ID | Test Scenario | Expected Result | Actual Result | Status |
|----------|---------------|-----------------|---------------|--------|
| FT-001 | Valid username + valid password | User should log in successfully | Login successful | Pass |
| FT-002 | Valid username + invalid password | Error message displayed | "Invalid credentials" displayed | Pass |
| FT-003 | Invalid username + valid password | Error message displayed | "Invalid credentials" displayed | Pass |
| FT-004 | Empty username | Username validation displayed | Required validation displayed | Pass |
| FT-005 | Empty password | Password validation displayed | Required validation displayed | Pass |
| FT-006 | Both fields empty | Required validations displayed | Required validations displayed | Pass |
| FT-007 | Password masking | Password remains hidden | Password masked correctly | Pass |
| FT-008 | Logout | User redirected to Login page | Logout successful | Pass |
| FT-009 | Browser refresh after login | Session remains active | Session remained active | Pass |
| FT-010 | Browser Back button after logout | Dashboard should not be accessible | Login page displayed | Pass |

---

# Exploratory Testing

## Activities Performed

- Tested login using the Enter key.
- Copied and pasted login credentials.
- Refreshed the browser during login.
- Opened multiple browser tabs.
- Used the browser Back button after logout.
- Resized the browser window.
- Tested long username and password values.
- Entered special characters in input fields.
- Performed multiple invalid login attempts.
- Clicked the Login button repeatedly.

---

## Observations

| Activity | Observation |
|----------|-------------|
| Enter key login | Worked successfully |
| Copy/Paste credentials | Worked correctly |
| Refresh during login | Session handled correctly |
| Multiple tabs | Session remained consistent |
| Browser Back button | Protected pages inaccessible after logout |
| Window resize | UI remained responsive |
| Long input values | Application handled input correctly |
| Special characters | Invalid credentials displayed |
| Multiple invalid attempts | Error message displayed consistently |
| Rapid Login clicks | No unexpected behavior observed |

---

# Defect Summary

| Severity | Count |
|----------|------:|
| Critical | 0 |
| Major | 0 |
| Minor | 0 |
| Cosmetic | 0 |
| **Total Defects** | **0** |

---

# Overall Result

**Execution Status:** ✅ Passed

All planned Smoke, Functional, and Exploratory test scenarios were executed successfully. No functional defects were identified during testing.

---

# Conclusion

The Login module of the OrangeHRM Demo application behaved as expected for all executed test scenarios.

The application successfully handled:

- Valid and invalid login attempts
- Required field validations
- Session management
- Logout functionality
- Browser interactions
- Exploratory user actions

Based on the executed test cases, the Login module is considered stable for the tested scenarios.
