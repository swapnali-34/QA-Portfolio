# Window Functions

Window functions perform calculations across a set of rows related to the
current row, **without collapsing the result into a single row** the way
`GROUP BY` does. This makes them useful for QA scenarios where you need to
rank, compare, or aggregate data while still seeing every individual record.

All examples use the `CompanyDB` sample database — see
[`03-Sample-Database.md`](./03-Sample-Database.md) for the schema.

---

## Why Window Functions Matter for QA

A `GROUP BY` query answers *"what's the average salary per department?"* but
collapses every employee into one row per department — you lose the
individual records.

A window function answers the same question **while keeping every row**, so
you can directly compare each employee against their department's average in
a single result set. This is especially useful for validation queries like
*"find every employee earning above their department's average"* without
needing a separate subquery join.

---

## 1. RANK() — Salary Ranking

Ranks employees by salary, highest first. Ties receive the same rank, and the
next rank number is skipped (e.g. two employees tied at rank 2 means the next
employee is rank 4).

```sql
SELECT
    EmployeeID,
    EmployeeName,
    Department,
    Salary,
    RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
FROM Employees;
```

---

## 2. RANK() with PARTITION BY — Ranking Within Each Department

`PARTITION BY` restarts the ranking for each group — here, each department is
ranked separately instead of ranking across the whole company.

```sql
SELECT
    EmployeeID,
    EmployeeName,
    Department,
    Salary,
    RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS DeptSalaryRank
FROM Employees;
```

---

## 3. DENSE_RANK() — Ranking Without Gaps

`DENSE_RANK()` works like `RANK()`, but does not skip numbers after a tie —
if two employees tie at rank 2, the next employee is rank 3, not rank 4.

```sql
SELECT
    EmployeeID,
    EmployeeName,
    Salary,
    DENSE_RANK() OVER (ORDER BY Salary DESC) AS SalaryDenseRank
FROM Employees;
```

**RANK() vs DENSE_RANK():**

| Salary | RANK() | DENSE_RANK() |
|---|---|---|
| 81000 | 1 | 1 |
| 78000 | 2 | 2 |
| 78000 | 2 | 2 |
| 72000 | 4 | 3 |

---

## 4. Department Average — Without Collapsing Rows

Unlike `GROUP BY`, this keeps every employee row visible alongside their
department's average salary.

```sql
SELECT
    EmployeeID,
    EmployeeName,
    Department,
    Salary,
    AVG(Salary) OVER (PARTITION BY Department) AS DepartmentAverageSalary
FROM Employees;
```

---

## 5. Employees Above Department Average

Combines the department-average window function with a filter, to find every
employee earning more than their own department's average — a common QA
validation scenario.

```sql
SELECT *
FROM (
    SELECT
        EmployeeID,
        EmployeeName,
        Department,
        Salary,
        AVG(Salary) OVER (PARTITION BY Department) AS DepartmentAverageSalary
    FROM Employees
) AS EmployeeWithDeptAvg
WHERE Salary > DepartmentAverageSalary;
```

---

## 6. Salary Difference from Overall Average

`OVER ()` with no `PARTITION BY` treats the entire table as one window,
comparing each employee against the company-wide average.

```sql
SELECT
    EmployeeID,
    EmployeeName,
    Salary,
    Salary - AVG(Salary) OVER () AS DifferenceFromOverallAverage
FROM Employees;
```

---

## 7. ROW_NUMBER() — Latest Order Per Customer

`ROW_NUMBER()` assigns a unique sequential number within each partition. By
numbering each customer's orders from most recent to oldest and filtering to
`rn = 1`, this returns exactly one row — the latest order — per customer.

```sql
SELECT *
FROM (
    SELECT
        OrderID,
        CustomerID,
        ProductID,
        Quantity,
        OrderDate,
        ROW_NUMBER() OVER (
            PARTITION BY CustomerID
            ORDER BY OrderDate DESC
        ) AS RowNum
    FROM Orders
) AS RankedOrders
WHERE RowNum = 1;
```

---

## Quick Reference

| Function | Use Case |
|---|---|
| `RANK()` | Rank rows; ties share a rank, next rank is skipped |
| `DENSE_RANK()` | Rank rows; ties share a rank, no ranks are skipped |
| `ROW_NUMBER()` | Assign a unique sequential number to each row |
| `AVG() OVER (...)` | Compare each row to a group average without collapsing rows |
| `PARTITION BY` | Restart the window calculation for each group (e.g. each department) |
| `OVER ()` (empty) | Apply the window function across the entire result set |

---

## QA Use Cases

- Rank test execution times to find the slowest test cases
- Compare each record against its group's average to flag outliers
- Find the most recent record per entity (latest order, latest login, latest status update) without a separate subquery per group
- Identify duplicate-adjacent records for cleanup validation (e.g. `ROW_NUMBER() > 1` per duplicate group)
