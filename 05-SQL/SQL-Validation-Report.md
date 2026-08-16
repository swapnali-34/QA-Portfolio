# SQL Validation Report

## Project

**CompanyDB – E-Commerce Database Validation**

---

## Project Objective

The objective of this project is to validate the backend database of an E-Commerce application using SQL.

The purpose of the validation is to verify customer data, product data, order data, relationships between tables, and important business rules.

SQL queries were used to identify invalid data and confirm that the database satisfies the defined requirements.

---

# Database

**Database Name:** CompanyDB

### Tables Used

- Customers
- Products
- Orders
- Users
- Employees

---

# Business Requirements

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

# Validation Results

## BR-01 — Customer Email Validation

### Requirement:

Every customer must have an email address.

### Validation Logic:

The query checks whether the customer email is:

- `NULL`
- Empty
- Contains only spaces

### Result

**Status:** PASS

No customers were found with a missing or empty email address.

## BR-02 — Customer Email Uniqueness

### Requirement:

Customer email must be unique.

### Validation Logic:

The query groups customer emails and identifies emails appearing more than once.

### Result

**Status:** PASS

No duplicate customer email addresses were found.

## BR-03 — Product Price Validation

### Requirement:

Product price must be greater than zero.

### Validation Logic:

A product is considered valid when Price > 0.
If the price is 0 or negative, the validation result would be FAIL.

### Result

**Status:** PASS

All products have a price greater than zero.

## BR-04 — Valid Customer Relationship

### Requirement:

Every order must belong to an existing customer.

### Validation Logic:

A LEFT JOIN is used to identify orders whose CustomerID does not exist in the Customers table.

### Result

**Status:** PASS

No orphan orders were found. Every order belongs to an existing customer.

## BR-05 — Valid Product Relationship

### Requirement:

Every order must reference an existing product.

### Validation Logic:

A LEFT JOIN is used to identify orders whose ProductID does not exist in the Products table.

### Result

**Status:** PASS

No invalid product references were found. Every order references an existing product.

## BR-06 — Order Quantity Validation

### Requirement:

Every order must have a quantity greater than zero.

### Validation Logic:

An order is valid when Quantity > 0.
A quantity of 0 or a negative quantity would result in FAIL.

### Result

**Status:** PASS

All orders have a quantity greater than zero.

## BR-07 — Future Order Date Validation

### Requirement:

An order date must not be in the future.

### Validation Logic:

A LEFT JOIN is used to identify orders whose ProductID does not exist in the Products table.

### Result

**Status:** PASS

No orders with future dates were found.

# Final QA Validation Report

## Objective

Perform a complete validation of order data against all defined business rules.

An order is considered valid only when:
- Customer exists.
- Product exists.
- Quantity is greater than zero.
- Order date is not in the future.

## Validation Rules
| Validation | PASS Condition |
|--------------|----------------|
| Customer     | Customer exists |
| Product      | Product exists |
| Quantity     | Quantity > 0 |
| Order Date   | OrderDate <= CURRENT_DATE |

## Result
**PASS**

## Result Explanation
The final validation confirmed that all orders satisfy the defined business rules.
- Every order belongs to an existing customer.
- Every order references an existing product.
- Every order has a quantity greater than zero.
- No order has a future date.

Therefore, the order data passed the complete database validation.
