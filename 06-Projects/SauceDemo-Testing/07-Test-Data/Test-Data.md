# Test Data

## Project Information

| Field | Details |
|--------|---------|
| Project Name | SauceDemo End-to-End Manual Testing |
| Application | SauceDemo |
| URL | https://www.saucedemo.com/ |
| Tester | Swapnali Shitole |

---

# Login Test Data

## Valid User

| Username | Password | Expected Result |
|-----------|----------|-----------------|
| standard_user | secret_sauce | Login Successful |

---

## Invalid Login Data

| Username | Password | Expected Result |
|-----------|----------|-----------------|
| invalid_user | secret_sauce | Error Message |
| standard_user | WrongPassword123 | Error Message |
| invalid_user | WrongPassword123 | Error Message |
| *(Blank)* | secret_sauce | Username Required |
| standard_user | *(Blank)* | Password Required |
| *(Blank)* | *(Blank)* | Username Required |

---

## Locked User

| Username | Password | Expected Result |
|-----------|----------|-----------------|
| locked_out_user | secret_sauce | Login Denied |

---

## Additional Demo Users

| Username | Password | Purpose |
|-----------|----------|---------|
| problem_user | secret_sauce | Test application behavior with known issues |
| performance_glitch_user | secret_sauce | Observe performance behavior |
| error_user | secret_sauce | Validate error scenarios |
| visual_user | secret_sauce | Validate visual rendering |

---

# Product Test Data

| Product Name |
|--------------|
| Sauce Labs Backpack |
| Sauce Labs Bike Light |
| Sauce Labs Bolt T-Shirt |
| Sauce Labs Fleece Jacket |
| Sauce Labs Onesie |
| Test.allTheThings() T-Shirt (Red) |

---

# Checkout Test Data

## Valid Customer Information

| Field | Value |
|-------|-------|
| First Name | John |
| Last Name | Smith |
| Postal Code | 411001 |

---

## Validation Test Data

| Scenario | First Name | Last Name | Postal Code | Expected Result |
|----------|------------|-----------|-------------|-----------------|
| Empty First Name | *(Blank)* | Smith | 411001 | Validation Message |
| Empty Last Name | John | *(Blank)* | 411001 | Validation Message |
| Empty Postal Code | John | Smith | *(Blank)* | Validation Message |

---

# Browser Information

| Browser | Version |
|----------|---------|
| Google Chrome | Latest |

---

# Operating System

| Operating System |
|------------------|
| Windows 11 |

---

# Environment Details

| Item | Value |
|------|-------|
| Application | SauceDemo |
| URL | https://www.saucedemo.com/ |
| Testing Type | Manual Testing |
| Internet Connection | Stable Broadband |

---

# Notes

- All credentials used in this project are publicly available demo credentials provided by SauceDemo.
- The test data was used to validate positive, negative, validation, and end-to-end test scenarios.
- This document can be updated if additional test users or datasets are introduced in future testing cycles.

---

# Conclusion

The above test data provides sufficient coverage for executing the planned manual test cases across the Login, Products, Shopping Cart, Checkout, Navigation, and Logout modules of the SauceDemo application.
