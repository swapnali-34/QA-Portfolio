# Sample Database

## Introduction

This document contains a sample database schema that can be used to practice SQL queries. The tables are simple enough for beginners while also covering common scenarios used in Software QA interviews.

The examples in **Practice-Queries.sql** are based on these tables.

---

# Database Name

```
CompanyDB
```

---

# Database Structure

```
CompanyDB
│
├── Employees
├── Departments
├── Users
├── Customers
├── Products
└── Orders

Total Tables : 6
```
# Supported SQL Topics

This sample database supports practice for:

- SELECT
- WHERE
- ORDER BY
- DISTINCT
- LIKE
- BETWEEN
- IN
- Aggregate Functions
- GROUP BY
- HAVING
- JOINS
- Subqueries
- Date Functions
- String Functions
---

# Table 1: Employees

## Purpose

Stores employee information.

### Columns

| Column | Data Type | Description |
|----------|-----------|-------------|
| EmployeeID | INT | Unique Employee ID (Primary Key) |
| EmployeeName | VARCHAR(100) | Employee Name |
| Age | INT | Employee Age |
| Gender | VARCHAR(10) | Male/Female |
| Department | VARCHAR(50) | Department Name |
| Salary | DECIMAL(10,2) | Employee Salary |
| City | VARCHAR(50) | Employee City |
| JoiningDate | DATE | Employee Joining Date |

### Sample Data

| EmployeeID | EmployeeName | Age | Gender | Department | Salary | City | JoiningDate |
|------------|--------------|-----|--------|------------|--------|------|-------------|
| 101 | John Smith | 28 | Male | QA | 50000 | Pune | 2023-01-10 |
| 102 | Alice Brown | 31 | Female | HR | 60000 | Mumbai | 2022-08-15 |
| 103 | David Lee | 26 | Male | Development | 70000 | Bengaluru | 2024-03-18 |
| 104 | Sarah Wilson | 29 | Female | QA | 55000 | Pune | 2023-11-20 |
| 105 | Michael Scott | 35 | Male | Sales | 65000 | Delhi | 2021-07-05 |
| 106 | Emma Johnson | 27 | Female | QA | 52000 | Hyderabad | 2023-05-12 |
| 107 | Robert Davis | 32 | Male | Development | 78000 | Chennai | 2022-09-18 |
| 108 | Priya Sharma | 25 | Female | HR | 48000 | Pune | 2024-02-10 |
| 109 | James Anderson | 30 | Male | Finance | 62000 | Bengaluru | 2021-11-08 |
| 110 | Neha Gupta | 29 | Female | QA | 56000 | Mumbai | 2023-07-25 |
| 111 | Daniel Wilson | 34 | Male | Sales | 68000 | Delhi | 2020-04-15 |
| 112 | Anjali Mehta | 26 | Female | Development | 72000 | Ahmedabad | 2024-01-30 |
| 113 | Kevin Thomas | 31 | Male | QA | 59000 | Kolkata | 2022-06-14 |
| 114 | Pooja Patil | 28 | Female | Finance | 61000 | Nagpur | 2023-10-05 |
| 115 | Arjun Nair | 33 | Male | Development | 81000 | Kochi | 2021-03-22 |

---
### Constraints

**Primary Key**

- EmployeeID

**Foreign Keys**

- None
---

# Table 2: Departments

## Purpose

Stores department details.

### Columns

| Column | Data Type | Description |
|----------|-----------|-------------|
| DepartmentID | INT | Primary Key |
| DepartmentName | VARCHAR(50) | Department Name |

### Sample Data

| DepartmentID | DepartmentName |
|---------------|----------------|
| 1 | QA |
| 2 | Development |
| 3 | HR |
| 4 | Sales |
| 5 | Finance |

---
### Constraints

**Primary Key**

- DepartmentID

**Foreign Keys**

- None
---

# Table 3: Users

## Purpose

Stores user login information.

### Columns

| Column | Data Type | Description |
|----------|-----------|-------------|
| UserID | INT | Primary Key |
| UserName | VARCHAR(100) | User Name |
| Email | VARCHAR(150) | Email Address |

### Sample Data

| UserID | UserName | Email |
|---------|----------|-------------------------|
| 1 | John | john@gmail.com |
| 2 | Alice | alice@yahoo.com |
| 3 | David | david@gmail.com |
| 4 | Sarah | sarah@company.com |
| 5 | Michael | michael@gmail.com |

---
### Constraints

**Primary Key**

- UserID

**Foreign Keys**

- None
---

# Table 4: Customers

## Purpose

Stores customer information.

### Columns

| Column | Data Type | Description |
|----------|-----------|-------------|
| CustomerID | INT | Primary Key |
| CustomerName | VARCHAR(100) | Customer Name |
| City | VARCHAR(50) | Customer City |
| Email | VARCHAR(150) | Email Address |

### Sample Data

| CustomerID | CustomerName | City | Email |
|-------------|--------------|------|-----------------------|
| 1 | Rahul Sharma | Pune | rahul@gmail.com |
| 2 | Priya Patel | Mumbai | priya@gmail.com |
| 3 | Amit Verma | Delhi | amit@gmail.com |
| 4 | Sneha Joshi | Pune | sneha@gmail.com |

---
### Constraints

**Primary Key**

- CustomerID

**Foreign Keys**

- None
---

# Table 5: Products

## Purpose

Stores product information.

### Columns

| Column | Data Type | Description |
|----------|-----------|-------------|
| ProductID | INT | Primary Key |
| ProductName | VARCHAR(100) | Product Name |
| Category | VARCHAR(50) | Product Category |
| Price | DECIMAL(10,2) | Product Price |

### Sample Data

| ProductID | ProductName | Category | Price |
|------------|-------------|-----------|--------|
| 101 | Laptop | Electronics | 65000 |
| 102 | Mouse | Electronics | 700 |
| 103 | Keyboard | Electronics | 1200 |
| 104 | Office Chair | Furniture | 8500 |
| 105 | Water Bottle | Accessories | 500 |

---
### Constraints

**Primary Key**

- ProductID

**Foreign Keys**

- None
---

# Table 6: Orders

## Purpose

Stores customer orders.

### Columns

| Column | Data Type | Description |
|----------|-----------|-------------|
| OrderID | INT | Primary Key |
| CustomerID | INT | Foreign Key |
| ProductID | INT | Foreign Key |
| Quantity | INT | Ordered Quantity |
| OrderDate | DATE | Order Date |

### Sample Data

| OrderID | CustomerID | ProductID | Quantity | OrderDate |
|----------|------------|-----------|----------|------------|
| 1001 | 1 | 101 | 1 | 2026-01-10 |
| 1002 | 2 | 102 | 2 | 2026-01-11 |
| 1003 | 1 | 105 | 3 | 2026-01-12 |
| 1004 | 3 | 104 | 1 | 2026-01-15 |

---
### Constraints

Primary Key

- OrderID

Foreign Keys

- CustomerID → Customers.CustomerID
- ProductID → Products.ProductID
  
---

# Primary Key Relationships

```
Departments
     │
     │
     ▼
Employees

Customers
     │
     │ CustomerID
     ▼
Orders
     ▲
     │ ProductID
Products
```
---

# SQL Practice Tables

| Table | Used For |
|---------|-----------|
| Employees | SELECT, WHERE, ORDER BY, GROUP BY, Aggregate Functions |
| Users | LIKE |
| Departments | DISTINCT |
| Customers | Customer Queries |
| Products | Product Queries |
| Orders | BETWEEN, Foreign Keys, Date Queries |

---

## QA Use Cases

This sample database can be used to verify:

- Employee records after registration or profile updates.
- User login details stored in the Users table.
- Customer information after account creation.
- Product details displayed in the application.
- Order records after successful checkout.
- Relationships between Customers, Orders, and Products.
- Backend database values against the application's user interface.

---

# Key Takeaways

- Employees table is used for practicing basic SQL queries.
- Users table is used for pattern matching and email validation.
- Customers, Products, and Orders demonstrate relational database concepts.
- Orders table introduces Primary Key and Foreign Key relationships.
- The sample database supports SQL practice commonly required for Manual QA interviews.

---

# Future SQL Practice

This sample database will also be used to practice:

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- GROUP BY
- HAVING
- Subqueries
- Views
- Stored Procedures
- Window Functions

---
