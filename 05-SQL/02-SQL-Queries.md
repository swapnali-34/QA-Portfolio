# SQL Queries

## Introduction

SQL queries are commands used to interact with a database. They allow us to retrieve, insert, update, and delete data stored in database tables.

As a QA Engineer, SQL queries help verify whether the application's backend data is correct after performing operations in the user interface.

---

# 1. SELECT

## Definition

The **SELECT** statement is used to retrieve data from one or more database tables.

## Syntax

```sql
SELECT column_name
FROM table_name;
```

Retrieve all columns:

```sql
SELECT *
FROM Employees;
```

## Example

```sql
SELECT EmployeeID, EmployeeName
FROM Employees;
```

## QA Use Case

After a user registers on a website, a QA Engineer can verify that the user's details were successfully stored in the database.

```sql
SELECT *
FROM Users
WHERE Email = 'john@example.com';
```

---

# 2. INSERT

## Definition

The **INSERT** statement is used to add new records into a table.

## Syntax

```sql
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
```

## Example

```sql
INSERT INTO Employees (EmployeeID, EmployeeName, Department)
VALUES (101, 'John', 'QA');
```

## QA Use Case

A tester may insert sample test data into the database before executing test cases.

---

# 3. UPDATE

## Definition

The **UPDATE** statement is used to modify existing records in a table.

## Syntax

```sql
UPDATE table_name
SET column_name = value
WHERE condition;
```

## Example

```sql
UPDATE Employees
SET Department = 'Testing'
WHERE EmployeeID = 101;
```

## QA Use Case

A QA Engineer may update a user's account status to test different application scenarios.

---

# 4. DELETE

## Definition

The **DELETE** statement removes existing records from a table.

## Syntax

```sql
DELETE FROM table_name
WHERE condition;
```

## Example

```sql
DELETE FROM Employees
WHERE EmployeeID = 101;
```

## QA Use Case

Delete test data after completing testing to keep the database clean.

> **Note:** Always use the `WHERE` clause with `DELETE`. Without it, all records in the table will be deleted.

---

# 5. DISTINCT

## Definition

The **DISTINCT** keyword returns only unique values from a column.

## Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

## Example

```sql
SELECT DISTINCT Department
FROM Employees;
```

## QA Use Case

Identify all unique departments, product categories, or user roles stored in the database.

---

# 6. LIKE

## Definition

The **LIKE** operator is used to search for data that matches a specific pattern.

### Wildcards

| Wildcard | Meaning |
|----------|---------|
| % | Zero or more characters |
| _ | Exactly one character |

## Syntax

```sql
SELECT *
FROM table_name
WHERE column_name LIKE pattern;
```

## Example

Names starting with 'A'

```sql
SELECT *
FROM Employees
WHERE EmployeeName LIKE 'A%';
```

Names ending with 'n'

```sql
SELECT *
FROM Employees
WHERE EmployeeName LIKE '%n';
```

## QA Use Case

Search for users whose email addresses belong to a specific domain.

```sql
SELECT *
FROM Users
WHERE Email LIKE '%@gmail.com';
```

---

# 7. IN

## Definition

The **IN** operator checks whether a value matches any value in a given list.

## Syntax

```sql
SELECT *
FROM table_name
WHERE column_name IN (value1, value2);
```

## Example

```sql
SELECT *
FROM Employees
WHERE Department IN ('QA', 'HR');
```

## QA Use Case

Retrieve users who belong to multiple roles without writing multiple OR conditions.

---

# 8. BETWEEN

## Definition

The **BETWEEN** operator filters records within a specified range.

## Syntax

```sql
SELECT *
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

## Example

```sql
SELECT *
FROM Employees
WHERE Salary BETWEEN 40000 AND 70000;
```

## QA Use Case

Verify records created between two dates.

```sql
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '2026-01-01' AND '2026-01-31';
```

---

# 9. LIMIT

## Definition

The **LIMIT** clause restricts the number of records returned by a query.

> **Note:** `LIMIT` is commonly used in MySQL and PostgreSQL. SQL Server uses `TOP` instead.

## Syntax

```sql
SELECT *
FROM table_name
LIMIT number;
```

## Example

```sql
SELECT *
FROM Employees
LIMIT 5;
```

## QA Use Case

Retrieve only a few records while verifying data in large tables.

---

# 10. Aggregate Functions

Aggregate functions perform calculations on multiple rows and return a single result.

---

## COUNT()

### Definition

Returns the total number of records.

### Syntax

```sql
SELECT COUNT(*)
FROM table_name;
```

### Example

```sql
SELECT COUNT(*)
FROM Employees;
```

### QA Use Case

Verify the total number of users, orders, or products in the database.

---

## SUM()

### Definition

Returns the total sum of numeric values.

### Syntax

```sql
SELECT SUM(column_name)
FROM table_name;
```

### Example

```sql
SELECT SUM(Salary)
FROM Employees;
```

### QA Use Case

Verify the total order amount or total invoice value.

---

## AVG()

### Definition

Returns the average value.

### Syntax

```sql
SELECT AVG(column_name)
FROM table_name;
```

### Example

```sql
SELECT AVG(Salary)
FROM Employees;
```

### QA Use Case

Calculate the average salary or average product price.

---

## MIN()

### Definition

Returns the smallest value.

### Syntax

```sql
SELECT MIN(column_name)
FROM table_name;
```

### Example

```sql
SELECT MIN(Salary)
FROM Employees;
```

### QA Use Case

Find the lowest price or earliest order date.

---

## MAX()

### Definition

Returns the largest value.

### Syntax

```sql
SELECT MAX(column_name)
FROM table_name;
```

### Example

```sql
SELECT MAX(Salary)
FROM Employees;
```

### QA Use Case

Find the highest salary, latest order, or maximum product price.

---

# Summary Table

| SQL Command | Purpose | QA Use Case |
|-------------|---------|-------------|
| SELECT | Retrieve data | Verify backend data |
| INSERT | Add records | Insert test data |
| UPDATE | Modify records | Update test data |
| DELETE | Remove records | Clean up test data |
| DISTINCT | Retrieve unique values | Verify unique categories or roles |
| LIKE | Search by pattern | Search emails, names, or products |
| IN | Match multiple values | Filter by multiple departments or roles |
| BETWEEN | Filter by range | Verify date or salary ranges |
| LIMIT | Restrict returned rows | View sample records from large tables |
| COUNT() | Count records | Verify total number of records |
| SUM() | Calculate total | Verify totals and amounts |
| AVG() | Calculate average | Verify average values |
| MIN() | Find minimum value | Verify lowest value |
| MAX() | Find maximum value | Verify highest value |

---

# Interview Tips

- Use **SELECT** to retrieve data from a database.
- Use **INSERT** to add new records.
- Use **UPDATE** to modify existing records.
- Use **DELETE** carefully with a **WHERE** clause.
- **DISTINCT** removes duplicate values.
- **LIKE** is used for pattern matching.
- **IN** checks multiple values in a single condition.
- **BETWEEN** filters data within a range.
- **LIMIT** restricts the number of rows returned.
- Aggregate functions help summarize data using **COUNT()**, **SUM()**, **AVG()**, **MIN()**, and **MAX()**.

---

# Key Takeaways

- SQL queries are essential for validating backend data during software testing.
- QA Engineers use SQL to verify that application actions are correctly reflected in the database.
- Understanding common SQL commands helps identify data-related defects and improves testing efficiency.
