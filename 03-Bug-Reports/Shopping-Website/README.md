# Shopping Website — Bug Reports

A practice bug-reporting exercise: 10 structured defect reports written
against a hypothetical shopping website, demonstrating clear, reproducible
bug documentation across multiple modules.

---

## 📁 Folder Structure

```text
Shopping-Website/
│
├── README.md
├── Shopping-Website-Bug-Reports.md
└── Shopping-Website-Bug-Reports.xlsx
```

---

## 📄 Contents

| File | Contents |
|---|---|
| [Shopping-Website-Bug-Reports.md](./Shopping-Website-Bug-Reports.md) | 10 detailed bug reports (BUG-001–BUG-010) with module, severity, priority, steps to reproduce, and expected vs. actual results |
| Shopping-Website-Bug-Reports.xlsx | Original bug report draft, created in Excel before being documented in Markdown |

---

## Scope

> **Note:** These are practice bug reports written for a hypothetical
> shopping website, not defects found while testing a specific live
> application. The purpose of this exercise is to demonstrate the ability
> to write clear, complete, and reproducible bug reports — covering
> functional, validation, security, performance, and UI defect types —
> rather than to document an actual testing session.

---

## Bug Summary

### By Severity

| Severity | Count |
|---|---|
| Critical | 4 |
| Major | 4 |
| Minor | 0 |
| **Total** | **10** |

### By Module

| Module | Bug Count | Bug IDs |
|---|---|---|
| Login | 3 | BUG-001, BUG-002, BUG-009 |
| Registration | 1 | BUG-003 |
| Shopping Cart | 1 | BUG-004 |
| Search | 1 | BUG-005 |
| User Profile | 1 | BUG-006 |
| Payment | 1 | BUG-007 |
| Logout | 1 | BUG-008 |
| User Interface (UI) | 1 | BUG-010 |

---

## Defect Types Covered

This set of bug reports was deliberately written to span multiple defect
categories, not just one repeated pattern:

- **Functional failures** — unresponsive Login button (BUG-001), crash on payment page refresh (BUG-007)
- **Broken navigation** — Forgot Password 404 (BUG-002), blank page on logout (BUG-008)
- **Validation gaps** — registration submitted without email (BUG-003)
- **Business logic errors** — incorrect cart total with two coupons (BUG-004)
- **Performance issues** — search box freezing after repeated use (BUG-005)
- **Security issues** — unrestricted file upload accepting `.exe` files (BUG-006), password visible in plain text (BUG-009)
- **UI/responsive issues** — layout breaking on mobile (BUG-010)

---

## Skills Demonstrated

- Writing clear, reproducible bug reports with complete steps
- Assigning appropriate severity and priority independently (see
  [07-Notes/01-Software-Testing-Fundamentals.md](../../07-Notes/01-Software-Testing-Fundamentals.md)
  for the Severity vs Priority distinction applied here)
- Covering functional, validation, security, performance, and UI defect types
- Structuring defect documentation for developer handoff
- Drafting in Excel and formalizing in Markdown for a GitHub-based QA portfolio

---

## Author

**Swapnali Shitole**
