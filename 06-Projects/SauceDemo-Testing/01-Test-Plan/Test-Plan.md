# Test Plan

## Project Information

| Field | Details |
|--------|---------|
| **Project Name** | SauceDemo End-to-End Manual Testing |
| **Application** | SauceDemo |
| **Application URL** | https://www.saucedemo.com/ |
| **Module** | End-to-End Testing |
| **Testing Type** | Manual Testing |
| **Tester** | Swapnali Shitole |
| **Document Version** | 1.0 |

---

# 1. Objective

The objective of this test plan is to verify the core functionality of the SauceDemo web application through end-to-end manual testing.

The testing aims to ensure that users can successfully:

- Log in to the application
- View available products
- Sort products
- Add products to the shopping cart
- Update cart contents
- Complete the checkout process
- Log out successfully

The goal is to identify defects and verify that the application behaves according to the expected business requirements.

---

# 2. Scope

The following features are included in this testing cycle:

## Login Module

- Valid login
- Invalid login
- Empty username
- Empty password
- Locked-out user
- Logout

## Products Module

- Product list display
- Product details
- Product sorting (Name and Price)
- Add to Cart
- Remove from Cart

## Shopping Cart

- View cart
- Verify added products
- Remove products
- Continue shopping

## Checkout

- Checkout information
- Order overview
- Finish order
- Order confirmation

## Navigation

- Menu options
- Browser refresh
- Browser back button
- Session validation

---

# 3. Out of Scope

The following items are not included in this project:

- Performance Testing
- Load Testing
- Stress Testing
- Security Testing
- API Testing
- Database Validation
- Accessibility Testing
- Mobile Application Testing
- Automation Testing

---

# 4. Test Environment

| Item | Details |
|------|---------|
| Operating System | Windows 11 |
| Browser | Google Chrome (Latest) |
| Application | SauceDemo |
| URL | https://www.saucedemo.com/ |
| Testing Type | Manual Testing |
| Internet Connection | Stable Broadband |

---

# 5. Test Approach

The application will be tested using the following manual testing techniques:

- Smoke Testing
- Functional Testing
- Exploratory Testing
- Positive Testing
- Negative Testing
- UI Validation
- End-to-End Testing

Testing will be performed module by module and followed by complete end-to-end execution of the user journey.

---

# 6. Test Data

## Valid User

| Username | Password |
|-----------|----------|
| standard_user | secret_sauce |

## Additional Test Users

| Username | Purpose |
|-----------|---------|
| locked_out_user | Verify locked account behavior |
| problem_user | Test known UI issues |
| performance_glitch_user | Observe performance behavior |
| error_user | Validate error scenarios |
| visual_user | Check visual rendering behavior |

Password for all users:

```text
secret_sauce
```

---

# 7. Entry Criteria

Testing will begin only after the following conditions are met:

- Application is accessible.
- Test environment is ready.
- Browser is installed.
- Test data is available.
- Test cases are prepared.
- Test scenarios are reviewed.

---

# 8. Exit Criteria

Testing will be considered complete when:

- All planned test cases have been executed.
- Critical and major defects have been documented.
- Test execution report has been prepared.
- Test summary report has been completed.
- RTM has been updated.
- Test metrics have been calculated.

---

# 9. Test Deliverables

The following documents will be produced during this project:

- Test Plan
- Test Scenarios
- Test Cases
- Test Execution Report
- Execution Summary
- Bug Reports
- Screenshots
- Test Data
- Requirement Traceability Matrix (RTM)
- Test Metrics
- Test Summary Report
- README Documentation

---

# 10. Risks

Potential risks include:

- Internet connectivity issues.
- Browser compatibility differences.
- Demo application availability.
- Changes made to the demo application during testing.

---

# 11. Assumptions

- The SauceDemo application remains available throughout testing.
- Test accounts remain active.
- Stable internet connectivity is available.
- No major application updates occur during the testing cycle.

---

# 12. Test Schedule

| Activity | Status |
|----------|--------|
| Test Planning | Planned |
| Test Scenario Preparation | Planned |
| Test Case Preparation | Planned |
| Test Execution | Planned |
| Bug Reporting | Planned |
| RTM Preparation | Planned |
| Test Metrics | Planned |
| Test Summary Report | Planned |

---

# Approval

| Role | Name |
|------|------|
| Tester | Swapnali Shitole |

---

# Conclusion

This Test Plan defines the scope, objectives, testing strategy, environment, and deliverables for the SauceDemo End-to-End Manual Testing project. Following this plan will help ensure systematic test execution and comprehensive coverage of the application's core user workflows.
