# SQL for QA

## Overview

This folder contains my SQL learning notes, practice queries, QA validation queries, and sample database created as part of my Software QA learning journey.

SQL is an essential skill for QA Engineers because it helps validate backend data, verify application functionality, investigate defects, verify relationships between tables, and compare application data with database records.

The SQL practice in this folder focuses on practical database validation scenarios commonly encountered in Manual QA and Software Testing.

---

# Learning Objectives

The purpose of this section is to develop practical SQL skills required for Manual QA and Software Testing roles.

By completing this section, I have practiced how to:

- Understand relational database concepts
- Write SQL queries to retrieve and filter data
- Validate backend data
- Verify relationships between database tables
- Identify invalid and missing records
- Detect duplicate and orphan records
- Validate business rules using SQL
- Perform data-quality checks
- Compare application/UI data with database data
- Use SQL for QA interview preparation

---

# Topics Covered

## Database Fundamentals

- Introduction to Databases
- DBMS vs RDBMS
- Tables, Rows & Columns
- Primary Key
- Foreign Key
- NULL Values
- Data Integrity
- Data Consistency
- Constraints

## SQL Basics

- SELECT
- WHERE
- ORDER BY
- DISTINCT
- LIKE
- IN
- BETWEEN
- LIMIT

## Data Manipulation

- INSERT
- UPDATE
- DELETE
- TRUNCATE
- Transactions
- COMMIT
- ROLLBACK
- ACID Properties

## Aggregate Functions

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

## Grouping and Filtering

- GROUP BY
- HAVING
- WHERE vs HAVING

## JOINs

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN
- Multi-table JOINs
- Table Aliases
- JOIN Conditions
- Finding Unmatched Records
- Finding Orphan Records

## Subqueries

- Basic Subqueries
- Subqueries with IN
- Subqueries with NOT IN
- EXISTS
- NOT EXISTS
- Correlated Subqueries
- JOIN vs Subquery

## SQL Functions

- CASE
- COALESCE()
- NULLIF()
- String Functions
- UPPER()
- LOWER()
- LENGTH()
- TRIM()
- Date Functions
- CURRENT_DATE

## Data Validation

- NULL Validation
- Empty Value Validation
- Mandatory Field Validation
- Numeric Validation
- Date Validation
- Duplicate Detection
- Relationship Validation
- Business Rule Validation
- PASS/FAIL Validation Reports
- Data Quality Checks

## Advanced SQL

- UNION
- UNION ALL
- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- PARTITION BY
- Department-level calculations
- Salary ranking
- Latest-record identification

---

# Folder Structure

```text
05-SQL/
│
├── README.md
├── 01-SQL-Basics.md
├── 02-SQL-Queries.md
├── Practice-Queries.sql
├── Sample-Database.md
├── SQL-Validation-Queries.sql
└── SQL-Validation-Report.md
```

---

# Files

## 01-SQL-Basics.md

Contains beginner-friendly notes covering:

- Database
- SQL
- DBMS vs RDBMS
- Tables
- Primary Key
- Foreign Key
- NULL
- Basic SQL Syntax

---

## 02-SQL-Queries.md

Contains explanations and examples for commonly used SQL commands and concepts, including:

- SELECT
- WHERE
- INSERT
- UPDATE
- DELETE
- DISTINCT
- LIKE
- IN
- BETWEEN
- LIMIT
- Aggregate Functions
- GROUP BY
- HAVING
- JOINs
- Subqueries
- CASE
- SQL Functions

Each topic includes practical examples and QA-oriented use cases.

---

## Practice-Queries.sql

Contains SQL queries and practical exercises covering:

- SELECT and WHERE
- ORDER BY
- DISTINCT
- LIKE, IN and BETWEEN
- INSERT, UPDATE and DELETE
- Aggregate Functions
- GROUP BY and HAVING
- JOINs
- Multi-table JOINs
- Subqueries
- EXISTS and NOT EXISTS
- NULL and Empty Value Checks
- Duplicate Record Detection
- Orphan Record Detection
- Date Validation
- String Functions
- CASE-based Validation
- COALESCE()
- Data Quality Checks
- Business Rule Validation
- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- PARTITION BY

---

## Sample-Database.md

Provides a sample relational database used for practicing SQL queries.

The document includes:

- CompanyDB structure
- Table descriptions
- Sample data
- Primary Key and Foreign Key relationships
- QA use cases

The practice queries in **Practice-Queries.sql** are based on this sample database.

---

## SQL-Validation-Queries.sql

Contains practical QA validation queries based on business requirements.

Examples include:

- Customer email validation
- Duplicate email detection
- Product price validation
- Order quantity validation
- Future order-date validation
- Customer relationship validation
- Product relationship validation
- Order total validation
- Multi-rule PASS/FAIL validation

---

## SQL-Validation-Report.md

Documents SQL-based QA validation scenarios and demonstrates how SQL can be used to identify valid and invalid records.

---

# QA Use Cases

SQL skills developed in this section can be applied to:

- Verify user registration data
- Validate employee records
- Check product information
- Verify customer records
- Validate order details
- Find duplicate records
- Find missing records
- Find orphan records
- Validate foreign-key relationships
- Verify business rules
- Compare frontend data with backend database values
- Support API response validation
- Investigate defects reported during testing

---

# Tools Used

- MySQL
- SQL
- Git
- GitHub
- Markdown

---

# SQL QA Skills Demonstrated

This section demonstrates my ability to:

- Retrieve and filter database records
- Join multiple tables
- Use aggregate functions
- Group and filter data
- Write subqueries
- Use EXISTS and NOT EXISTS
- Validate NULL and empty values
- Detect duplicate and orphan records
- Apply business rules using CASE
- Create PASS/FAIL validation results
- Perform date and numeric validation
- Calculate expected values
- Use window functions for advanced data analysis
- Validate application data against backend records

---

# Repository Status

| Topic | Status |
|---|---|
| SQL Basics | ✅ Completed |
| SQL Queries | ✅ Completed |
| Data Manipulation | ✅ Completed |
| Aggregate Functions | ✅ Completed |
| GROUP BY & HAVING | ✅ Completed |
| SQL JOINs | ✅ Completed |
| Subqueries | ✅ Completed |
| EXISTS / NOT EXISTS | ✅ Completed |
| SQL Functions | ✅ Completed |
| CASE Validation | ✅ Completed |
| Data Validation | ✅ Completed |
| Data Quality Checks | ✅ Completed |
| Business Rule Validation | ✅ Completed |
| SQL Aggregations & Reporting | ✅ Completed |
| Window Functions | ✅ Completed |
| SQL QA Practice | ✅ Completed |
| SQL Interview Preparation | ✅ Completed |

---

# SQL Learning Status

**SQL learning phase completed for Manual QA preparation.**

The SQL section has focused on practical concepts required for database validation and QA testing rather than attempting to cover every advanced database-development topic.

Future SQL topics may be explored as required during API testing, automation testing, or real-world QA projects.

---

# Career Objective

I am seeking an opportunity as a Manual QA Analyst / QA Analyst where I can apply my knowledge of manual testing, SQL, API testing, and QA documentation while continuing to develop my skills in software quality assurance.

---

*This SQL section is part of my continuous QA learning journey and demonstrates practical SQL knowledge developed through hands-on exercises and QA-focused validation scenarios.*
