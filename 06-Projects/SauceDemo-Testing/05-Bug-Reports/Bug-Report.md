# Bug Report

## Project Information

| Field | Details |
|--------|---------|
| Project Name | SauceDemo End-to-End Manual Testing |
| Application | SauceDemo |
| URL | https://www.saucedemo.com/ |
| Tester | Swapnali Shitole |
| Report Version | 1.1 |

---

> **Note:** During execution of the 35 planned test cases, no functional defects were identified in SauceDemo. The bug reports below are **practice examples created for learning and portfolio purposes**, demonstrating the format and quality of professional bug documentation — not defects found while testing this application.

---

## BUG-001 — Cart badge does not reset after removing the last item

| Field | Details |
|--------|---------|
| Module | Shopping Cart |
| Severity | Minor |
| Priority | Low |
| Environment | Windows 11, Google Chrome (Latest) |
| Preconditions | Exactly one product is in the cart. |
| Steps to Reproduce | 1. Add one product to the cart.<br>2. Open the cart.<br>3. Remove the product.<br>4. Observe the cart badge. |
| Expected Result | The cart badge should disappear entirely once the cart is empty. |
| Actual Result | The cart badge briefly continues to display before clearing. *(Practice example)* |
| Status | New (Practice Example) |

---

## BUG-002 — Sort selection resets after adding a product to the cart

| Field | Details |
|--------|---------|
| Module | Product Sorting |
| Severity | Minor |
| Priority | Low |
| Environment | Windows 11, Google Chrome (Latest) |
| Preconditions | User is on the Products page. |
| Steps to Reproduce | 1. Sort products by **Price (Low to High)**.<br>2. Add a product to the cart.<br>3. Observe the sort dropdown and product order. |
| Expected Result | The selected sort order should persist after adding an item to the cart. |
| Actual Result | The sort dropdown resets to the default order. *(Practice example)* |
| Status | New (Practice Example) |

---

## BUG-003 — Postal Code field accepts non-numeric characters

| Field | Details |
|--------|---------|
| Module | Checkout |
| Severity | Minor |
| Priority | Medium |
| Environment | Windows 11, Google Chrome (Latest) |
| Preconditions | User is on the Checkout Information page. |
| Steps to Reproduce | 1. Enter valid First Name and Last Name.<br>2. Enter letters (e.g. `ABCDE`) into the Postal Code field.<br>3. Click **Continue**. |
| Expected Result | The Postal Code field should reject non-numeric input with a validation message. |
| Actual Result | The checkout proceeds without validating that the Postal Code is numeric. *(Practice example)* |
| Status | New (Practice Example) |

---

## Bug Summary

| Metric | Count |
|--------|------:|
| Total Bug Reports | 3 |
| Critical | 0 |
| Major | 0 |
| Minor | 3 |
| Cosmetic | 0 |

---

## Defect Severity Levels

| Severity | Description |
|----------|-------------|
| Critical | System crash or major functionality unavailable. |
| Major | Important functionality does not work correctly. |
| Minor | Small functional issue with limited impact. |
| Cosmetic | UI or visual issue that does not affect functionality. |

---

## Defect Priority Levels

| Priority | Description |
|----------|-------------|
| High | Must be fixed immediately before release. |
| Medium | Should be fixed in the next planned release. |
| Low | Can be fixed in a future release. |

---

## Defect Status Flow

```
New
 ↓
Assigned
 ↓
In Progress
 ↓
Fixed
 ↓
Retest
 ↓
Closed
```

---

## Remarks

- No functional defects were identified during the execution of the 35 planned manual test cases against the real SauceDemo application.
- The 3 bugs above are practice examples demonstrating professional bug-report structure and reasoning.
- This document should be updated whenever new defects — real or practice — are identified in future testing cycles.

---

## Conclusion

Based on the executed manual tests, the SauceDemo application demonstrated stable behavior for all 35 scenarios covered in this project, with no functional defects identified. The practice examples above demonstrate the ability to write clear, structured, professional bug reports for when defects are found.
