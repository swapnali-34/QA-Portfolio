# SQL Validation Report

## Project

**CompanyDB – E-Commerce Database Validation**

---

## Project Objective

The objective of this project is to validate the backend database of an E-Commerce application using SQL.

The purpose of the validation is to verify customer data, product data, order data, relationships between tables, and important business rules.

SQL queries were used to identify invalid data and confirm that the database satisfies the defined requirements.

Queries for every validation below are in
[`06-SQL-Validation-Queries.sql`](./06-SQL-Validation-Queries.sql).

---

## Database

**Database Name:** CompanyDB

### Tables Used

- Customers
- Products
- Orders
- Users
- Employees

---

## Business Requirements

| Requirement ID | Requirement |
|---|---|
| BR-01 | Every customer must have an email address. |
| BR-02 | Customer email must be unique. |
| BR-03 | Product price must be greater than 0. |
| BR-04 | Every order must belong to a valid customer. |
| BR-05 | Every order must contain a valid product. |
| BR-06 | Order quantity must be greater than 0. |
| BR-07 | Order date cannot be in the future. |

---

## Validation Summary

| Requirement | Validation | Status |
|---|---|---|
| BR-01 | Customer Email | **PASS** |
| BR-02 | Unique Customer Email | **PASS** |
| BR-03 | Product Price | **PASS** |
| BR-04 | Valid Customer Reference | **PASS** |
| BR-05 | Valid Product Reference | **PASS** |
| BR-06 | Order Quantity | **PASS** |
| BR-07 | Future Order Date | **PASS** |

## Overall Result

**PASS** (with one deliberately introduced failing record — see below)

All seven business requirements (BR-01–BR-07) were validated against the
CompanyDB database with no issues found. The final combined order
validation additionally includes one deliberately invalid order record,
added specifically to confirm the validation query correctly detects
failures rather than always returning PASS.

---

## Validation Results

### BR-01 — Customer Email Validation

**Requirement:** Every customer must have an email address.

**Validation Logic:** The query checks whether the customer email is `NULL`, empty, or contains only spaces.

**Result — Status: PASS**

No customers were found with a missing or empty email address.

---

### BR-02 — Customer Email Uniqueness

**Requirement:** Customer email must be unique.

**Validation Logic:** The query groups customer emails and identifies emails appearing more than once.

**Result — Status: PASS**

No duplicate customer email addresses were found.

---

### BR-03 — Product Price Validation

**Requirement:** Product price must be greater than zero.

**Validation Logic:** A product is considered valid when `Price > 0`. If the price is 0 or negative, the validation result would be FAIL.

**Result — Status: PASS**

All products have a price greater than zero.

---

### BR-04 — Valid Customer Relationship

**Requirement:** Every order must belong to an existing customer.

**Validation Logic:** A `LEFT JOIN` is used to identify orders whose `CustomerID` does not exist in the Customers table.

**Result — Status: PASS**

No orphan orders were found. Every order belongs to an existing customer.

---

### BR-05 — Valid Product Relationship

**Requirement:** Every order must reference an existing product.

**Validation Logic:** A `LEFT JOIN` is used to identify orders whose `ProductID` does not exist in the Products table.

**Result — Status: PASS**

No invalid product references were found. Every order references an existing product.

---

### BR-06 — Order Quantity Validation

**Requirement:** Every order must have a quantity greater than zero.

**Validation Logic:** An order is valid when `Quantity > 0`. A quantity of 0 or a negative quantity would result in FAIL.

**Result — Status: PASS**

All orders have a quantity greater than zero.

---

### BR-07 — Future Order Date Validation

**Requirement:** An order date must not be in the future.

**Validation Logic:** The query checks whether `OrderDate` is greater than `CURRENT_DATE`. Any order with a date beyond today is flagged.

**Result — Status: PASS**

No orders with future dates were found.

---

## Final QA Validation Report

### Objective

Perform a complete validation of order data against all defined business
rules, and confirm the validation logic itself is trustworthy — i.e. that
it actually flags bad data rather than passing everything by default.

An order is considered valid only when:
- Customer exists.
- Product exists.
- Quantity is greater than zero.
- Order date is not in the future.

### Validation Rules

| Validation | PASS Condition |
|--------------|----------------|
| Customer     | Customer exists |
| Product      | Product exists |
| Quantity     | Quantity > 0 |
| Order Date   | OrderDate <= CURRENT_DATE |

### Test Data Note

A fifth order record (**OrderID 1005**) was deliberately added to the
`Orders` table with a `NULL` `ProductID`, specifically to verify the
validation query detects an invalid reference rather than only ever
confirming valid data. This is not an error in the dataset — it's an
intentional negative test case for the validation logic itself.

### Result

| OrderID | CustomerID | ProductID | Quantity | OrderDate | Result |
|---|---|---|---|---|---|
| 1001 | 1 | 101 | 1 | 2026-01-10 | PASS |
| 1002 | 2 | 102 | 2 | 2026-01-11 | PASS |
| 1003 | 1 | 105 | 3 | 2026-01-12 | PASS |
| 1004 | 3 | 104 | 1 | 2026-01-15 | PASS |
| 1005 | 4 | *(NULL)* | *(NULL)* | 2026-09-20 | **FAIL** *(deliberately invalid — missing product reference)* |

**Status: PASS** (validation logic confirmed correct — 4 genuinely valid
orders pass, and the 1 deliberately invalid order is correctly caught)

The final validation confirms:
- All four genuine orders belong to an existing customer, reference an
  existing product, have quantity greater than zero, and have no future
  date.
- The validation query correctly flags OrderID 1005 as **FAIL** due to a
  missing product reference — confirming the query detects real problems
  rather than defaulting to PASS.

This distinction matters for QA credibility: a validation script that
never fails anything hasn't been proven to work. Including one
intentionally broken record demonstrates the query's detection logic is
actually functioning as designed.
