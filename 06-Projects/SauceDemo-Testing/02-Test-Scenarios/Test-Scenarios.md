# Test Scenarios

## Project Information

| Field | Details |
|--------|---------|
| Project Name | SauceDemo End-to-End Manual Testing |
| Application | SauceDemo |
| URL | https://www.saucedemo.com/ |
| Module | End-to-End Testing |
| Tester | Swapnali Shitole |
| Testing Type | Manual Testing |

---

# Objective

The objective of this document is to identify all high-level test scenarios required to verify the core functionality of the SauceDemo application.

---

# Login Module

| Scenario ID | Test Scenario |
|-------------|---------------|
| TS-001 | Verify the user can log in with valid credentials. |
| TS-002 | Verify an error message is displayed for an invalid username. |
| TS-003 | Verify an error message is displayed for an invalid password. |
| TS-004 | Verify an error message is displayed when both username and password are invalid. |
| TS-005 | Verify validation when the username field is left empty. |
| TS-006 | Verify validation when the password field is left empty. |
| TS-007 | Verify validation when both username and password fields are empty. |
| TS-008 | Verify that a locked-out user cannot log in. |

---

# Products Module

| Scenario ID | Test Scenario |
|-------------|---------------|
| TS-009 | Verify the Products page is displayed after successful login. |
| TS-010 | Verify all available products are displayed. |
| TS-011 | Verify product names are displayed correctly. |
| TS-012 | Verify product prices are displayed correctly. |
| TS-013 | Verify product images are displayed correctly. |
| TS-014 | Verify product descriptions are displayed correctly. |

---

# Product Sorting

| Scenario ID | Test Scenario |
|-------------|---------------|
| TS-015 | Verify products can be sorted by Name (A to Z). |
| TS-016 | Verify products can be sorted by Name (Z to A). |
| TS-017 | Verify products can be sorted by Price (Low to High). |
| TS-018 | Verify products can be sorted by Price (High to Low). |

---

# Shopping Cart

| Scenario ID | Test Scenario |
|-------------|---------------|
| TS-019 | Verify a product can be added to the cart. |
| TS-020 | Verify multiple products can be added to the cart. |
| TS-021 | Verify a product can be removed from the cart. |
| TS-022 | Verify the shopping cart badge displays the correct item count. |
| TS-023 | Verify the shopping cart page displays the selected products. |
| TS-024 | Verify the Continue Shopping button redirects to the Products page. |

---

# Checkout Module

| Scenario ID | Test Scenario |
|-------------|---------------|
| TS-025 | Verify the user can proceed to Checkout. |
| TS-026 | Verify validation when the First Name field is empty. |
| TS-027 | Verify validation when the Last Name field is empty. |
| TS-028 | Verify validation when the Postal Code field is empty. |
| TS-029 | Verify the user can complete checkout with valid information. |
| TS-030 | Verify the order confirmation page is displayed after successful checkout. |

---

# Navigation & Session

| Scenario ID | Test Scenario |
|-------------|---------------|
| TS-031 | Verify the browser Refresh button behaves correctly after login. |
| TS-032 | Verify the browser Back button does not allow access to protected pages after logout. |
| TS-033 | Verify the application maintains the user session during navigation. |

---

# Logout

| Scenario ID | Test Scenario |
|-------------|---------------|
| TS-034 | Verify the user can log out successfully. |
| TS-035 | Verify the user is redirected to the Login page after logout. |

---

# Test Scenario Summary

| Module | Number of Scenarios |
|--------|--------------------:|
| Login | 8 |
| Products | 6 |
| Product Sorting | 4 |
| Shopping Cart | 6 |
| Checkout | 6 |
| Navigation & Session | 3 |
| Logout | 2 |
| **Total** | **35** |

---

# Notes

- These scenarios provide end-to-end coverage of the SauceDemo application.
- Detailed test cases will be created for each scenario in the **03-Test-Cases** folder.
- The scenarios include positive, negative, validation, navigation, and functional testing to ensure comprehensive manual test coverage.
