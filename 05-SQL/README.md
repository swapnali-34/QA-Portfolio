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
├── Practice-Queries.sql
├── Sample-Database.md
└── SQL-Validation-Report.md
```

---

# 🎯 Learning Objectives

Through this section, I have practiced:

- SQL fundamentals
- Data retrieval and filtering
- Data manipulation
- Aggregate functions
- Grouping and filtering grouped data
- Joins and table relationships
- Subqueries
- Correlated subqueries
- `EXISTS` and `NOT EXISTS`
- Data validation using SQL
- Business-rule validation
- Database integrity validation
- `CASE`-based PASS/FAIL reports
- String and date functions
- Order and customer analysis
- Window functions
- Ranking and analytical queries

---

# 📚 SQL Topics Covered

## 1. SQL Basics

Covered fundamental database concepts including:

- Database
- SQL
- DBMS vs RDBMS
- Primary Key
- Foreign Key
- NULL
- SQL syntax
- Basic `SELECT` queries

📄 Reference:

`01-SQL-Basics.md`

---

## 2. SQL Queries

Practiced commonly used SQL commands and operators:

- `SELECT`
- `INSERT`
- `UPDATE`
- `DELETE`
- `DISTINCT`
- `LIKE`
- `IN`
- `BETWEEN`
- `LIMIT`
- Aggregate Functions

Also practiced:

- `WHERE`
- `ORDER BY`
- `GROUP BY`
- `HAVING`

📄 Reference:

`02-SQL-Queries.md`

---

# 🗄️ Sample Database

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

📄 Reference:

`Sample-Database.md`

---

# 🔗 Database Relationships

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

This allows me to practice:

- `INNER JOIN`
- `LEFT JOIN`
- Relationship validation
- Orphan-record detection
- Customer-order validation
- Product-order validation

---

# 🧪 SQL Practice

I created a collection of executable SQL queries using the `CompanyDB` database.

The practice includes:

### Basic Queries

- Selecting records
- Selecting specific columns
- Filtering records
- Sorting data
- Limiting results

### Filtering

- `WHERE`
- `IN`
- `BETWEEN`
- `LIKE`
- Comparison operators

### Aggregation

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

### Grouping

- `GROUP BY`
- `HAVING`

### Functions

- String functions
- Date functions
- `CURRENT_DATE`
- `UPPER()`
- `LOWER()`
- `LENGTH()`

📄 Reference:

`Practice-Queries.sql`

---

# 🔍 Database Testing & QA Validation

The most important part of this section is applying SQL from a **QA Engineer's perspective**.

Instead of only retrieving data, I practiced writing queries to answer questions such as:

> Is the data correct?

> Does the data follow the business requirement?

> Are there invalid records?

> Are relationships between tables correct?

> Are there duplicate records?

> Are required fields missing?

---

# ✅ Data Validation Scenarios

I practiced validating requirements such as:

### Customer Validation

- Customer name should not be NULL or empty.
- Customer email should not be NULL or empty.
- Customer email should be unique.

### Product Validation

- Product name should not be NULL or empty.
- Product price must be greater than zero.

### Employee Validation

- Employee must be at least 18 years old.
- Employee salary must be greater than zero.
- Employee name should not be NULL or empty.

### Order Validation

- Customer must exist.
- Product must exist.
- Quantity must be greater than zero.
- Order date must not be in the future.
- Product price must be greater than zero.
- Expected order total must be greater than zero.

---

# 🧩 SQL Validation Techniques Practiced

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

# 🔗 JOIN Practice

I practiced joining related tables to validate application data.

Examples include:

```text
Customers → Orders
Products  → Orders
Customers → Orders → Products
```

Queries were created using:

- `INNER JOIN`
- `LEFT JOIN`

These queries helped me understand how QA Engineers can verify relationships between UI data and backend database records.

---

# 🔎 Subqueries & EXISTS

I also practiced advanced filtering techniques including:

- Subqueries
- Correlated subqueries
- `EXISTS`
- `NOT EXISTS`

Examples include finding:

- Customers who have orders
- Customers without orders
- Products that have been ordered
- Products never ordered
- Invalid customer references
- Invalid product references
- Customers with multiple orders
- Employees above the average salary

---

# 📊 Business Reporting

I practiced creating SQL reports using:

- `GROUP BY`
- `HAVING`
- `COUNT()`
- `SUM()`
- `AVG()`
- `COALESCE()`

Examples include:

- Orders per customer
- Total quantity per customer
- Product order analysis
- Customer purchase summaries
- Department salary analysis
- Customers with multiple orders

---

# 🧮 Business Calculations

I practiced calculating values directly from database records.

For example:

```text
ExpectedTotal = Product Price × Order Quantity
```

Example:

```sql
p.Price * o.Quantity AS ExpectedTotal
```

This can be used by QA Engineers to compare:

```text
UI Expected Total
        ↓
Database Calculated Total
```

and identify potential calculation or data discrepancies.

---

# 🟢 PASS / 🔴 FAIL Validation Reports

I practiced converting business requirements into SQL validation logic using `CASE`.

Example:

```sql
CASE
    WHEN <all validation conditions>
    THEN 'PASS'
    ELSE 'FAIL'
END AS ValidationResult
```

This approach helps create database validation reports that clearly communicate whether records satisfy the application's business rules.

---

# 📈 Window Functions

I have also started practicing SQL window functions.

Topics practiced include:

- `RANK()`
- `DENSE_RANK()`
- `ROW_NUMBER()`
- `OVER()`
- `PARTITION BY`

Examples include:

### Salary Ranking

Ranking employees based on salary.

### Department Average

Calculating average salary within each department.

### Salary Difference

Comparing employee salary against the overall average salary.

### Employees Above Department Average

Identifying employees whose salary is higher than their department average.

### Latest Order Per Customer

Using:

```sql
ROW_NUMBER() OVER (
    PARTITION BY CustomerID
    ORDER BY OrderDate DESC
)
```

to identify the latest order for each customer.

---

# 🧪 SQL Validation Project

## CompanyDB – E-Commerce Database Validation

I created a QA-focused SQL validation project using the `CompanyDB` database.

The project validates the following business requirements:

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

📄 Reference:

`SQL-Validation-Report.md`

---

# 🧑‍💻 Tools Used

- SQLite
- DB Browser for SQLite
- SQL
- Git
- GitHub

---

# 🎯 QA Use Cases

SQL knowledge is important for QA because many defects cannot be identified from the UI alone.

I can use SQL to:

- Verify data created through the UI.
- Validate records after registration.
- Verify customer information.
- Verify product information.
- Verify order information after checkout.
- Compare UI values with database values.
- Check whether business rules are correctly applied.
- Identify duplicate records.
- Find missing or invalid data.
- Validate relationships between tables.
- Investigate reported defects.
- Verify backend data after CRUD operations.

---

# 🧪 Example QA Scenario

Suppose the UI shows:

```text
Customer: Rahul Sharma
Product: Laptop
Price: ₹65,000
Quantity: 3
```

As a QA Engineer, I can query the database and verify:

```text
Customer exists
        ↓
Product exists
        ↓
Price is correct
        ↓
Quantity is correct
        ↓
Expected Total = Price × Quantity
```

This allows me to validate both the **frontend result and backend data**.

---

# 📁 SQL Portfolio Contents

| File | Purpose |
|------|---------|
| `01-SQL-Basics.md` | SQL and database fundamentals |
| `02-SQL-Queries.md` | Common SQL commands and concepts |
| `Practice-Queries.sql` | SQL practice queries |
| `Sample-Database.md` | CompanyDB schema and sample data |
| `SQL-Validation-Report.md` | QA-focused database validation project |

---

# 🚀 Current SQL Skill Level

I have progressed from basic SQL syntax to practical QA-oriented database testing.

### Completed

- SQL Fundamentals
- Basic Queries
- Filtering
- Sorting
- Aggregate Functions
- `GROUP BY`
- `HAVING`
- Joins
- Foreign Keys
- Data Validation
- Business Rule Validation
- PASS/FAIL Reports
- Subqueries
- Correlated Subqueries
- `EXISTS`
- `NOT EXISTS`
- `COALESCE()`
- String Functions
- Date Functions
- Window Functions
- `RANK()`
- `DENSE_RANK()`
- `ROW_NUMBER()`

---

# 📌 Next Learning Areas

Future SQL practice will focus on strengthening:

- Complex JOIN queries
- Advanced subqueries
- Window functions
- CTEs
- Views
- Advanced data validation
- Complex QA scenarios
- SQL interview problems
- Database defect investigation

---

# 💡 Key Learning

> **SQL for QA is not just about writing queries. It is about using data to verify whether the application behaves correctly.**

The goal of this section is to demonstrate practical SQL knowledge and the ability to apply SQL for **database testing and QA validation**.
