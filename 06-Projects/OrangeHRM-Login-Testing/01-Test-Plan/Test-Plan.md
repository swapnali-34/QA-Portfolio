# Test Plan

## Project Information

| Field | Details |
|--------|---------|
| Project Name | OrangeHRM Login Testing |
| Module | Login |
| Application | OrangeHRM Demo |
| Testing Type | Manual Testing |
| Tester | Swapnali Shitole |
| Test Environment | Windows 11, Google Chrome (Latest) |

---

# 1. Objective

The objective of this test plan is to verify that the Login module functions correctly under different input conditions and user actions.

The testing aims to ensure that:

- Users can log in using valid credentials.
- Invalid login attempts are handled appropriately.
- Required field validations work correctly.
- Session management functions properly.
- Logout works as expected.

---

# 2. Scope

## In Scope

- Login Page
- Username field
- Password field
- Login button
- Logout functionality
- Session handling
- Browser behavior

## Out of Scope

- User Registration
- Forgot Password
- Admin Module
- Employee Management
- Performance Testing
- Security Testing
- API Testing

---

# 3. Test Objectives

The following areas will be tested:

- UI Verification
- Functional Testing
- Input Validation
- Smoke Testing
- Exploratory Testing

---

# 4. Test Environment

| Item | Details |
|------|---------|
| Operating System | Windows 11 |
| Browser | Google Chrome (Latest) |
| Internet | Stable Connection |
| Application URL | https://opensource-demo.orangehrmlive.com/ |

---

# 5. Test Data

| Username | Password |
|-----------|----------|
| Admin | admin123 |
| Admin | WrongPassword |
| WrongUser | admin123 |
| Empty | admin123 |
| Admin | Empty |
| Empty | Empty |

---

# 6. Entry Criteria

Testing will begin when:

- Application is accessible.
- Test environment is ready.
- Test credentials are available.

---

# 7. Exit Criteria

Testing will be considered complete when:

- All planned test cases are executed.
- Critical defects are reported.
- Test execution report is prepared.

---

# 8. Deliverables

The following documents will be produced:

- Test Plan
- Test Scenarios
- Test Cases
- Test Execution Report
- Execution Summary
- Bug Report
- Test Data

---

# 9. Risks

Possible risks include:

- Application downtime
- Internet connectivity issues
- Browser compatibility issues
- Invalid test credentials

---

# 10. Conclusion

This Test Plan provides a structured approach for validating the Login functionality of the OrangeHRM Demo application through manual testing.
