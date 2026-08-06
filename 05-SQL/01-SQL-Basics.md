# SQL Basics

## Introduction

Structured Query Language (SQL) is one of the most important skills for a Software QA Engineer. It helps testers retrieve, verify, and validate data stored in databases. QA engineers use SQL to confirm that application data is stored correctly and matches the expected results.

---

# What is a Database?

A **Database** is an organized collection of data that is stored electronically. It allows users to store, retrieve, update, and manage information efficiently.

### Examples

- Employee Records
- Student Information
- Banking Systems
- E-commerce Websites
- Hospital Management Systems

### Real-Life Example

When you create an account on an online shopping website, your details such as name, email, and password are stored in a database.

---

# What is SQL?

**SQL (Structured Query Language)** is a standard programming language used to communicate with relational databases.

Using SQL, we can:

- Retrieve data
- Insert new records
- Update existing records
- Delete records
- Create databases and tables
- Manage database permissions

### Why SQL is Important for QA?

QA Engineers use SQL to:

- Verify data stored in the database.
- Validate application functionality.
- Check backend data after UI operations.
- Compare expected and actual database values.
- Identify data-related defects.

---

# DBMS vs RDBMS

| DBMS | RDBMS |
|------|--------|
| Stands for Database Management System. | Stands for Relational Database Management System. |
| Stores data as files or simple tables. | Stores data in related tables. |
| Relationships between tables are not mandatory. | Supports relationships between tables using keys. |
| Less secure. | More secure and reliable. |
| Suitable for small applications. | Suitable for large enterprise applications. |

### Examples

**DBMS**

- File System
- XML Database

**RDBMS**

- MySQL
- PostgreSQL
- Oracle
- Microsoft SQL Server

---

# Primary Key

A **Primary Key** is a column that uniquely identifies each record in a table.

### Rules

- Must contain unique values.
- Cannot contain NULL values.
- Every table should have only one Primary Key.

### Example

| EmployeeID | Employee Name |
|------------|---------------|
| 101 | John |
| 102 | David |
| 103 | Sarah |

Here, **EmployeeID** is the Primary Key.

---

# Foreign Key

A **Foreign Key** is a column that creates a relationship between two tables.

It refers to the Primary Key of another table.

### Example

**Customers Table**

| CustomerID | Name |
|------------|------|
| 1 | John |
| 2 | Alice |

**Orders Table**

| OrderID | CustomerID |
|---------|------------|
| 101 | 1 |
| 102 | 2 |

Here, **CustomerID** in the Orders table is a Foreign Key because it references the CustomerID in the Customers table.

---

# NULL

**NULL** means a value is missing, unknown, or not available.

It does **not** mean:

- Zero (0)
- Empty String ("")
- False

### Example

| EmployeeID | Phone Number |
|------------|--------------|
| 101 | 9876543210 |
| 102 | NULL |

The second employee's phone number is not available.

---

# SQL Syntax

### Select All Records

```sql
SELECT * FROM Employees;
```

---

### Select Specific Columns

```sql
SELECT EmployeeName, Salary
FROM Employees;
```

---

### Filter Records

```sql
SELECT *
FROM Employees
WHERE Department = 'QA';
```

---

### Sort Records

```sql
SELECT *
FROM Employees
ORDER BY Salary DESC;
```

---

### Count Records

```sql
SELECT COUNT(*)
FROM Employees;
```

---

# Example Queries

## Retrieve All Employees

```sql
SELECT * FROM Employees;
```

---

## Retrieve Employees from QA Department

```sql
SELECT *
FROM Employees
WHERE Department = 'QA';
```

---

## Retrieve Employees with Salary Greater Than 50000

```sql
SELECT *
FROM Employees
WHERE Salary > 50000;
```

---

## Retrieve Employees Sorted by Name

```sql
SELECT *
FROM Employees
ORDER BY EmployeeName;
```

---

## Count Total Employees

```sql
SELECT COUNT(*)
FROM Employees;
```

---

# Common SQL Commands

| Command | Purpose |
|----------|---------|
| SELECT | Retrieve data from a table |
| INSERT | Add new records |
| UPDATE | Modify existing records |
| DELETE | Remove records |
| CREATE | Create a database or table |
| ALTER | Modify an existing table |
| DROP | Delete a table or database |

---

# SQL Interview Tips

- SQL is **not case-sensitive**, but writing keywords in uppercase improves readability.
- Always use the `WHERE` clause carefully before running `UPDATE` or `DELETE`.
- Primary Keys uniquely identify records.
- Foreign Keys establish relationships between tables.
- NULL represents missing or unknown data.

---

# Summary

- A Database stores organized data.
- SQL is used to communicate with relational databases.
- DBMS manages data, while RDBMS manages related data using tables.
- A Primary Key uniquely identifies each record.
- A Foreign Key links related tables.
- NULL represents missing or unknown values.
- SQL enables users to retrieve, insert, update, and delete data efficiently.

---
