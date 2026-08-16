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

### Requirement

Every customer must have an email address.

### Validation Logic

The query checks whether the customer email is:

- `NULL`
- Empty
- Contains only spaces

### Result

**Status:** PASS

No customers were found with a missing or empty email address.

## BR-02 — Customer Email Uniqueness
**Requirement:**
Customer email must be unique.

**Validation Logic:**
The query groups customer emails and identifies emails appearing more than once.
