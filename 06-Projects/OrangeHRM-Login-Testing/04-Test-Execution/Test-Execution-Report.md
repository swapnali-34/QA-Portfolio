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

## Test Objective

The objective of this test execution is to verify that the Login module of the OrangeHRM Demo application functions correctly under different input conditions and user actions.

Testing includes:

- Smoke Testing
- Functional Testing
- Exploratory Testing (unscripted, supplementary — see Section 4)

---

## Test Environment

| Item | Details |
|------|---------|
| Operating System | Windows 11 |
| Browser | Google Chrome (Latest) |
| Internet Connection | Stable |
| Testing Method | Manual Testing |

---

## Test Credentials

| Username | Password |
|-----------|----------|
| Admin | admin123 |

---

## 1. Smoke Test Execution

| Test ID | Test Scenario | Expected Result | Actual Result | Status |
|----------|---------------|-----------------|---------------|--------|
| ST-001 | Login page loads successfully | Login page loads without errors | Login page loaded successfully | Pass |
| ST-002 | Username field is visible | Username field is displayed | Username field displayed | Pass |
| ST-003 | Password field is visible | Password field is displayed | Password field displayed | Pass |
| ST-004 | Login button is clickable | Login button responds to clicks | Login button clicked successfully | Pass |
| ST-005 | Login with valid credentials | User logs in successfully | Login successful | Pass |
| ST-006 | Dashboard loads after login | Dashboard is displayed | Dashboard loaded successfully | Pass |

---

## 2. Functional Test Execution

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
| FT-011 | Login using the Enter key | Login succeeds without clicking the button | Login successful | Pass |
| FT-012 | Copy/paste credentials into fields | Credentials accepted, login succeeds | Login successful | Pass |
| FT-013 | Very long username/password (100+ chars) | Handled gracefully, no crash | Login rejected cleanly | Pass |
| FT-014 | Special characters in Username field | Login rejected with an error | Rejected, error displayed | Pass |
| FT-015 | Special characters in Password field | Login rejected with "Invalid credentials" | Rejected, message displayed | Pass |
| FT-016 | Multiple consecutive invalid login attempts | Error shown each time, no crash | Error displayed consistently, no crash | Pass |

*FT-011–016 correspond to TC-015–020 in [Login-Test-Cases.md](../03-Test-Cases/Login-Test-Cases.md).*

---

## 3. Test Coverage Check

| Category | Test IDs | Distinct Test Cases Covered |
|---|---|---:|
| Smoke | ST-001–006 | TC-001–005 (TC-005 double-checked) |
| Functional | FT-001–016 | TC-005–020 |
| **Total distinct test cases** | | **20 (TC-001–020)** |

All 20 formally documented test cases have a recorded execution result above. TC-005 is intentionally checked in both suites — once as a smoke "is it even working" gate, once in full functional depth.

---

## 4. Exploratory Testing (Unscripted, Supplementary)

Exploratory testing, by definition, has no predefined test cases — the
tester explores the application to surface behavior the 20 scripted cases
above don't explicitly cover. These activities are supplementary to, not
part of, the 20 formal test cases.

### Activities Performed

- Refreshed the browser mid-login (before submitting, not after — different from FT-009's post-login refresh)
- Opened multiple browser tabs after logging in
- Resized the browser window at various points
- Clicked the Login button rapidly, multiple times in succession

### Observations

| Activity | Observation |
|----------|-------------|
| Refresh mid-login | Form reset cleanly, no error state left behind |
| Multiple tabs | Session remained consistent across tabs |
| Window resize | UI remained responsive, no layout breakage |
| Rapid Login clicks | No duplicate submissions or unexpected behavior observed |

No defects were found during exploratory testing, but it's a smaller
finding-surface by nature than scripted testing — its value is in probing
outside the scripted paths, not in a pass/fail count.

---

## Defect Summary

| Severity | Count |
|----------|------:|
| Critical | 0 |
| Major | 0 |
| Minor | 0 |
| Cosmetic | 0 |
| **Total Defects** | **0** |

---

## Overall Result

**Execution Status:** ✅ Passed

All 20 planned test cases (Smoke + Functional) passed, and supplementary exploratory testing surfaced no additional issues.

---

## Conclusion

The Login module of the OrangeHRM Demo application behaved as expected for all 20 executed test cases, plus the supplementary exploratory activities performed.

The application successfully handled:

- Valid and invalid login attempts
- Required field validations
- Session management
- Logout functionality
- Browser interactions
- Long input and special-character input
- Repeated invalid login attempts

Based on the executed test cases, the Login module is considered stable for the tested scenarios.
