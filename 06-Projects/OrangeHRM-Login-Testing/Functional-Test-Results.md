# Functional Test Results

## Project

OrangeHRM Demo

## Module

Login

## Objective

Verify that all Login module functionalities work according to the expected requirements.

| Test ID | Test Scenario | Expected Result | Actual Result | Status |
|----------|---------------|-----------------|---------------|--------|
| FT-001 | Valid username + valid password | User should login successfully | User logged in successfully | Pass |
| FT-002 | Valid username + invalid password | Error message should appear | Invalid credentials message displayed | Pass |
| FT-003 | Invalid username + valid password | Error message should appear | Invalid credentials message displayed | Pass |
| FT-004 | Empty username | Validation message should appear | Required validation displayed | Pass |
| FT-005 | Empty password | Validation message should appear | Required validation displayed | Pass |
| FT-006 | Both fields empty | Validation messages should appear | Required validations displayed | Pass |
| FT-007 | Password masking | Password should remain hidden | Password remained masked | Pass |
| FT-008 | Logout | User should return to Login page | Logout successful | Pass |
| FT-009 | Browser refresh after login | Session should remain active | Session remained active | Pass |
| FT-010 | Browser Back button after logout | Dashboard should not be accessible | Login page displayed | Pass |

---

## Summary

| Total Tests | Passed | Failed |
|-------------|--------|--------|
| 10 | 10 | 0 |

### Conclusion

All functional test cases passed successfully. No functional defects were identified.
