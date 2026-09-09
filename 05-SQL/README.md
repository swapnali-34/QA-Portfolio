# SQL for QA Engineers

This folder contains my SQL learning and practical database testing work as part of my QA Analyst portfolio.

The focus is not only on learning SQL syntax, but on using SQL to **validate application data, verify business rules, identify data-quality issues, and perform backend database testing**.

---

## 📁 Folder Structure

```text
05-SQL/
│
├── README.md
├── 01-SQL-Basics.md
├── 02-SQL-Queries.md
├── 03-Sample-Database.md
├── 04-Window-Functions.md
├── 05-Practice-Queries.sql
├── 06-SQL-Validation-Queries.sql
└── 07-SQL-Validation-Report.md
```

---

## 📄 Documentation

| File | Contents |
|---|---|
| [01-SQL-Basics.md](./01-SQL-Basics.md) | Databases, DBMS vs RDBMS, Primary/Foreign Keys, NULL, basic syntax |
| [02-SQL-Queries.md](./02-SQL-Queries.md) | SELECT, INSERT, UPDATE, DELETE, DISTINCT, LIKE, IN, BETWEEN, LIMIT, aggregate functions |
| [03-Sample-Database.md](./03-Sample-Database.md) | CompanyDB schema — 6 tables, sample data, relationships |
| [04-Window-Functions.md](./04-Window-Functions.md) | RANK, DENSE_RANK, ROW_NUMBER, PARTITION BY with worked examples |
| [05-Practice-Queries.sql](./05-Practice-Queries.sql) | 112 executable practice queries covering all topics above |
| [06-SQL-Validation-Queries.sql](./06-SQL-Validation-Queries.sql) | QA validation project — 7 business-rule queries + final report query |
| [07-SQL-Validation-Report.md](./07-SQL-Validation-Report.md) | Written validation report for the queries above |

---

## 🎯 Learning Objectives

Through this section, I have practiced:

- SQL fundamentals
- Data retrieval and filtering
- Data manipulation
- Aggregate functions
- Grouping and filtering grouped data
- Joins and table relationships
- Subqueries
- Correlated subqueries
- Data validation using SQL
- Business-rule validation
- Database integrity validation
- `CASE`-based PASS/FAIL reports
- String and date functions
- Order and customer analysis
- Window functions (`RANK`, `DENSE_RANK`, `ROW_NUMBER`, `PARTITION BY`)

---

## 🗄️ Sample Database

I created a sample relational database named:

```text
CompanyDB
```

The database contains six tables:

```text
CompanyDB
│
├── Employees
├── Departments
├── Users
├── Customers
├── Products
└── Orders
```

The database is used to practice SQL queries and QA database-validation scenarios.

📄 Full schema and sample data: [03-Sample-Database.md](./03-Sample-Database.md)

---

## 🔗 Database Relationships

The database includes relationships between:

```text
Customers
    │
    │ CustomerID
    ▼
Orders
    ▲
    │ ProductID
    │
Products
```

The `Orders` table contains foreign-key relationships with:

- `Customers.CustomerID`
- `Products.ProductID`

This allows me to practice `INNER JOIN`, `LEFT JOIN`, relationship validation, orphan-record detection, customer-order validation, and product-order validation.

---

## 🧪 SQL Practice

[05-Practice-Queries.sql](./05-Practice-Queries.sql) contains **112 executable queries** against `CompanyDB`, organized by topic:

- Basic SELECT, filtering, sorting, `DISTINCT`, `LIMIT`
- `IN`, `BETWEEN`, `LIKE`
- Aggregate functions, `GROUP BY`, `HAVING`
- Date and string functions
- `INNER JOIN` / `LEFT JOIN`
- QA data-validation queries (missing fields, duplicates, orphan records)
- `INSERT` / `UPDATE` / `DELETE`, transactions (`COMMIT` / `ROLLBACK`)
- Conditional (`CASE`-based) PASS/FAIL validation
- Subqueries and correlated filtering
- Business reporting and calculations (expected order totals)
- A complete end-to-end order validation query
- **Window functions** (`RANK`, `DENSE_RANK`, `ROW_NUMBER`, `PARTITION BY`) — see [04-Window-Functions.md](./04-Window-Functions.md) for explanations of each

---

## 🔍 Database Testing & QA Validation

The most important part of this section is applying SQL from a **QA Engineer's perspective**.

Instead of only retrieving data, I practiced writing queries to answer questions such as:

> Is the data correct? Does the data follow the business requirement? Are there invalid records? Are relationships between tables correct? Are there duplicate records? Are required fields missing?

---

## ✅ Data Validation Scenarios

I practiced validating requirements such as:

**Customer Validation**
- Customer name should not be NULL or empty.
- Customer email should not be NULL or empty.
- Customer email should be unique.

**Product Validation**
- Product name should not be NULL or empty.
- Product price must be greater than zero.

**Employee Validation**
- Employee must be at least 18 years old.
- Employee salary must be greater than zero.
- Employee name should not be NULL or empty.

**Order Validation**
- Customer must exist.
- Product must exist.
- Quantity must be greater than zero.
- Order date must not be in the future.
- Product price must be greater than zero.
- Expected order total must be greater than zero.

---

## 🧩 SQL Validation Techniques Practiced

I have practiced using SQL to identify:

- NULL values
- Empty values
- Duplicate records
- Invalid prices
- Invalid quantities
- Invalid dates
- Orphan orders
- Invalid foreign-key references
- Customers without orders
- Products never ordered
- Employees violating business rules

---

## 🔎 Subqueries & Advanced Filtering

I also practiced advanced filtering techniques including subqueries and `IN`-based filtering. Examples include finding customers who have orders, customers without orders, products that have been ordered, products never ordered, invalid customer references, invalid product references, customers with multiple orders, and employees above the average salary.

---

## 📊 Business Reporting

I practiced creating SQL reports using `GROUP BY`, `HAVING`, `COUNT()`, `SUM()`, `AVG()`, and `COALESCE()`. Examples include orders per customer, total quantity per customer, product order analysis, customer purchase summaries, department salary analysis, and customers with multiple orders.

---

## 🧮 Business Calculations

I practiced calculating values directly from database records:

```text
ExpectedTotal = Product Price × Order Quantity
```

```sql
p.Price * o.Quantity AS ExpectedTotal
```

This can be used by QA Engineers to compare a UI-displayed expected total against the database-calculated total and identify potential calculation or data discrepancies.

---

## 🟢 PASS / 🔴 FAIL Validation Reports

I practiced converting business requirements into SQL validation logic using `CASE`:

```sql
CASE
    WHEN <all validation conditions>
    THEN 'PASS'
    ELSE 'FAIL'
END AS ValidationResult
```

This approach helps create database validation reports that clearly communicate whether records satisfy the application's business rules.

---

## 📈 Window Functions

I practiced SQL window functions using `CompanyDB`, including `RANK()`, `DENSE_RANK()`, `ROW_NUMBER()`, and `PARTITION BY`. Full explanations and worked examples are in [04-Window-Functions.md](./04-Window-Functions.md); the corresponding executable queries are in [05-Practice-Queries.sql](./05-Practice-Queries.sql) (queries 106–112).

Examples include:

- **Salary Ranking** — ranking employees by salary company-wide and within each department
- **Department Average** — comparing each employee to their department's average salary without collapsing rows
- **Salary Difference** — comparing each employee against the overall company average
- **Employees Above Department Average** — combining a window function with a filter
- **Latest Order Per Customer** — using `ROW_NUMBER()` with `PARTITION BY` to find each customer's most recent order

---

## 🧪 SQL Validation Project

### CompanyDB – E-Commerce Database Validation

I created a QA-focused SQL validation project using the `CompanyDB` database, validating the following business requirements:

| Requirement | Validation |
|------------|------------|
| BR-01 | Every customer must have an email |
| BR-02 | Customer email must be unique |
| BR-03 | Product price must be greater than 0 |
| BR-04 | Every order must belong to a valid customer |
| BR-05 | Every order must contain a valid product |
| BR-06 | Order quantity must be greater than 0 |
| BR-07 | Order date cannot be in the future |

The validation queries return invalid records and also generate PASS/FAIL results where appropriate.

📄 Queries: [06-SQL-Validation-Queries.sql](./06-SQL-Validation-Queries.sql)
📄 Report: [07-SQL-Validation-Report.md](./07-SQL-Validation-Report.md)

---

## 🧑‍💻 Tools Used

- SQLite
- DB Browser for SQLite
- SQL
- Git
- GitHub

---

## 🎯 QA Use Cases

SQL knowledge is important for QA because many defects cannot be identified from the UI alone. I can use SQL to verify data created through the UI, validate records after registration, verify customer and product information, verify order information after checkout, compare UI values with database values, check whether business rules are correctly applied, identify duplicate records, find missing or invalid data, validate relationships between tables, investigate reported defects, and verify backend data after CRUD operations.

---

## 🧪 Example QA Scenario

Suppose the UI shows:

```text
Customer: Rahul Sharma
Product: Laptop
Price: ₹65,000
Quantity: 3
```

As a QA Engineer, I can query the database and verify:

```text
Customer exists → Product exists → Price is correct → Quantity is correct → Expected Total = Price × Quantity
```

This allows me to validate both the **frontend result and backend data**.

---

## 🚀 Current SQL Skill Level

I have progressed from basic SQL syntax to practical QA-oriented database testing.

### Completed

- SQL Fundamentals
- Basic Queries, Filtering, Sorting
- Aggregate Functions, `GROUP BY`, `HAVING`
- Joins, Foreign Keys
- Data Validation, Business Rule Validation
- PASS/FAIL Reports
- Subqueries
- String Functions, Date Functions
- Window Functions — `RANK()`, `DENSE_RANK()`, `ROW_NUMBER()`, `PARTITION BY`

### Currently Learning

- Correlated subqueries
- `EXISTS` / `NOT EXISTS`
- Common Table Expressions (CTEs)

---

## 📌 Next Learning Areas

Future SQL practice will focus on strengthening:

- Complex multi-table JOIN queries
- Correlated subqueries and `EXISTS` / `NOT EXISTS`
- CTEs and Views
- Advanced data validation scenarios
- SQL interview problems
- Database defect investigation

---

## 💡 Key Learning

> **SQL for QA is not just about writing queries. It is about using data to verify whether the application behaves correctly.**

The goal of this section is to demonstrate practical SQL knowledge and the ability to apply SQL for **database testing and QA validation**.
