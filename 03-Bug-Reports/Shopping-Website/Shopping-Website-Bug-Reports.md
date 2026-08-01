# Shopping Website - Bug Reports

## Objective

The objective of this document is to report defects identified during the testing of a shopping website. Each bug report includes the necessary information required by the development team to reproduce and fix the issue.

---

## Bug Report 1

| Field | Value |
|-------|-------|
| **Bug ID** | BUG-001 |
| **Bug Title** | Login button is unresponsive after entering valid credentials |
| **Module** | Login |
| **Severity** | Critical |
| **Priority** | High |
| **Environment** | Windows 11, Google Chrome (Latest) |
| **Preconditions** | User has a valid registered account. |
| **Steps to Reproduce** | 1. Open the Login page.<br>2. Enter a valid email address.<br>3. Enter a valid password.<br>4. Click the **Login** button. |
| **Expected Result** | User should be logged in successfully and redirected to the dashboard. |
| **Actual Result** | Clicking the **Login** button has no effect. |
| **Status** | New |

---

## Bug Report 2

| Field | Value |
|-------|-------|
| **Bug ID** | BUG-002 |
| **Bug Title** | Forgot Password link opens a 404 Page Not Found error |
| **Module** | Login |
| **Severity** | Major |
| **Priority** | High |
| **Environment** | Windows 11, Google Chrome (Latest) |
| **Preconditions** | User is on the Login page. |
| **Steps to Reproduce** | 1. Open the Login page.<br>2. Click the **Forgot Password** link. |
| **Expected Result** | User should be redirected to the password recovery page. |
| **Actual Result** | A **404 Page Not Found** error is displayed. |
| **Status** | New |

---

## Bug Report 3

| Field | Value |
|-------|-------|
| **Bug ID** | BUG-003 |
| **Bug Title** | Registration form accepts submission without an email address |
| **Module** | Registration |
| **Severity** | Major |
| **Priority** | High |
| **Environment** | Windows 11, Google Chrome (Latest) |
| **Preconditions** | User is on the Registration page. |
| **Steps to Reproduce** | 1. Open the Registration page.<br>2. Fill in all mandatory fields except the email address.<br>3. Click **Register**. |
| **Expected Result** | The system should display a validation message indicating that the email address is mandatory. |
| **Actual Result** | The registration form is submitted successfully without an email address. |
| **Status** | New |

---

## Bug Report 4

| Field | Value |
|-------|-------|
| **Bug ID** | BUG-004 |
| **Bug Title** | Shopping cart total is calculated incorrectly when two discount coupons are applied |
| **Module** | Shopping Cart |
| **Severity** | Critical |
| **Priority** | High |
| **Environment** | Windows 11, Google Chrome (Latest) |
| **Preconditions** | Cart contains eligible products and two valid discount coupons are available. |
| **Steps to Reproduce** | 1. Add products to the cart.<br>2. Apply the first coupon.<br>3. Apply the second coupon.<br>4. Review the cart total. |
| **Expected Result** | The cart total should be calculated correctly according to the discount rules. |
| **Actual Result** | The cart total is calculated incorrectly after applying two coupons. |
| **Status** | New |

---

## Bug Report 5

| Field | Value |
|-------|-------|
| **Bug ID** | BUG-005 |
| **Bug Title** | Search box freezes after searching for more than 50 products |
| **Module** | Search |
| **Severity** | Major |
| **Priority** | Medium |
| **Environment** | Windows 11, Google Chrome (Latest) |
| **Preconditions** | User is on the product search page. |
| **Steps to Reproduce** | 1. Search for products repeatedly until more than 50 searches have been performed.<br>2. Continue using the search box. |
| **Expected Result** | The search box should continue responding normally. |
| **Actual Result** | The search box becomes unresponsive and freezes. |
| **Status** | New |

---

## Bug Report 6

| Field | Value |
|-------|-------|
| **Bug ID** | BUG-006 |
| **Bug Title** | Profile picture upload accepts executable (.exe) files |
| **Module** | User Profile |
| **Severity** | Critical |
| **Priority** | High |
| **Environment** | Windows 11, Google Chrome (Latest) |
| **Preconditions** | User is logged in and is on the Profile page. |
| **Steps to Reproduce** | 1. Navigate to the Profile page.<br>2. Click **Upload Profile Picture**.<br>3. Select an `.exe` file.<br>4. Upload the file. |
| **Expected Result** | The system should reject unsupported file types and display a validation message. |
| **Actual Result** | The `.exe` file is uploaded successfully. |
| **Status** | New |

---

## Bug Report 7

| Field | Value |
|-------|-------|
| **Bug ID** | BUG-007 |
| **Bug Title** | Application crashes when the payment page is refreshed |
| **Module** | Payment |
| **Severity** | Critical |
| **Priority** | High |
| **Environment** | Windows 11, Google Chrome (Latest) |
| **Preconditions** | User has reached the Payment page during checkout. |
| **Steps to Reproduce** | 1. Add products to the cart.<br>2. Proceed to the Payment page.<br>3. Refresh the browser. |
| **Expected Result** | The payment page should reload safely without crashing. |
| **Actual Result** | The application crashes after the page is refreshed. |
| **Status** | New |

---

## Bug Report 8

| Field | Value |
|-------|-------|
| **Bug ID** | BUG-008 |
| **Bug Title** | Logout button redirects to a blank white page |
| **Module** | Logout |
| **Severity** | Major |
| **Priority** | Medium |
| **Environment** | Windows 11, Google Chrome (Latest) |
| **Preconditions** | User is logged into the application. |
| **Steps to Reproduce** | 1. Log in to the application.<br>2. Click the **Logout** button. |
| **Expected Result** | User should be logged out successfully and redirected to the Login page. |
| **Actual Result** | A blank white page is displayed after clicking the **Logout** button. |
| **Status** | New |

---

## Bug Report 9

| Field | Value |
|-------|-------|
| **Bug ID** | BUG-009 |
| **Bug Title** | Password remains visible when Show Password is disabled |
| **Module** | Login |
| **Severity** | Critical |
| **Priority** | High |
| **Environment** | Windows 11, Google Chrome (Latest) |
| **Preconditions** | User is on the Login page. |
| **Steps to Reproduce** | 1. Enter a password.<br>2. Ensure **Show Password** is disabled.<br>3. Observe the password field. |
| **Expected Result** | The password should be masked when **Show Password** is disabled. |
| **Actual Result** | The password is displayed in plain text. |
| **Status** | New |

---

## Bug Report 10

| Field | Value |
|-------|-------|
| **Bug ID** | BUG-010 |
| **Bug Title** | Website layout breaks on mobile devices |
| **Module** | User Interface (UI) |
| **Severity** | Major |
| **Priority** | Medium |
| **Environment** | Android 14, Google Chrome (Latest) |
| **Preconditions** | User accesses the website using a mobile device. |
| **Steps to Reproduce** | 1. Open the shopping website in a mobile browser.<br>2. Navigate through multiple pages.<br>3. Observe the page layout. |
| **Expected Result** | The website layout should adjust correctly to different mobile screen sizes. |
| **Actual Result** | UI elements overlap, misalign, or extend beyond the screen boundaries. |
| **Status** | New |

---

## Summary

- **Project:** Shopping Website
- **Document Type:** Bug Reports
- **Total Bugs Reported:** 10
- **Bug IDs:** BUG-001 to BUG-010
- **Status:** New
- **Prepared By:** Swapnali Shitole
