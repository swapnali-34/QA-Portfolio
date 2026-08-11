-- ==========================================
-- Practice-Queries.sql
-- SQL Practice Queries for QA Engineers
-- ==========================================

-- Sample Tables:
-- Employees(EmployeeID, EmployeeName, Age, Gender, Department, Salary, City, JoiningDate)
-- Users(UserID, UserName, Email)

-- ==========================================
-- BASIC SELECT QUERIES
-- ==========================================

-- 1. Display all records
SELECT *
FROM Employees;

-- 2. Display only Employee Name
SELECT
    EmployeeName
FROM Employees;

-- 3. Display Employee Name and Salary
SELECT
    EmployeeName,
    Salary
FROM Employees;

-- ==========================================
-- FILTERING DATA
-- ==========================================

-- 4. Display employees from QA department
SELECT *
FROM Employees
WHERE Department = 'QA';

-- 5. Display employees whose salary is greater than 50000
SELECT *
FROM Employees
WHERE Salary > 50000;

-- 6. Display employees whose salary is less than 30000
SELECT *
FROM Employees
WHERE Salary < 30000;

-- 7. Display employees whose age is 25
SELECT *
FROM Employees
WHERE Age = 25;

-- 8. Display employees who are not from HR department
SELECT *
FROM Employees
WHERE Department <> 'HR';

-- ==========================================
-- DISTINCT
-- ==========================================

-- 9. Display unique departments
SELECT DISTINCT Department
FROM Employees;

-- 10. Display unique cities
SELECT DISTINCT City
FROM Employees;

-- ==========================================
-- SORTING
-- ==========================================

-- 11. Sort employees by salary (Ascending)
SELECT *
FROM Employees
ORDER BY Salary ASC;

-- 12. Sort employees by salary (Descending)
SELECT *
FROM Employees
ORDER BY Salary DESC;

-- 13. Sort employees alphabetically
SELECT *
FROM Employees
ORDER BY EmployeeName ASC;

-- 14. Display top 5 employees
SELECT *
FROM Employees
LIMIT 5;

-- ==========================================
-- BETWEEN
-- ==========================================

-- 15. Display employees between age 25 and 35
SELECT *
FROM Employees
WHERE Age BETWEEN 25 AND 35;

-- 16. Display employees with salary between 40000 and 70000
SELECT *
FROM Employees
WHERE Salary BETWEEN 40000 AND 70000;

-- ==========================================
-- IN
-- ==========================================

-- 17. Display employees from QA or HR department
SELECT *
FROM Employees
WHERE Department IN ('QA', 'HR');

-- 18. Display employees from Pune or Mumbai
SELECT *
FROM Employees
WHERE City IN ('Pune', 'Mumbai');

-- ==========================================
-- LIKE
-- ==========================================

-- 19. Find employees whose name starts with A
SELECT *
FROM Employees
WHERE EmployeeName LIKE 'A%';

-- 20. Find employees whose name ends with n
SELECT *
FROM Employees
WHERE EmployeeName LIKE '%n';

-- 21. Find employees whose name contains 'an'
SELECT *
FROM Employees
WHERE EmployeeName LIKE '%an%';

-- 22. Find Gmail users
SELECT *
FROM Users
WHERE Email LIKE '%@gmail.com';

-- ==========================================
-- AGGREGATE FUNCTIONS
-- ==========================================

-- 23. Count total employees
SELECT COUNT(*)
FROM Employees;

-- 24. Count QA employees
SELECT COUNT(*)
FROM Employees
WHERE Department = 'QA';

-- 25. Find maximum salary
SELECT MAX(Salary)
FROM Employees;

-- 26. Find minimum salary
SELECT MIN(Salary)
FROM Employees;

-- 27. Find average salary
SELECT AVG(Salary)
FROM Employees;

-- 28. Find total salary paid
SELECT SUM(Salary)
FROM Employees;

-- ==========================================
-- GROUP BY
-- ==========================================

-- 29. Count employees department-wise
SELECT
    Department,
    COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

-- 30. Average salary department-wise
SELECT
    Department,
    AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;

-- 31. Maximum salary department-wise
SELECT
    Department,
    MAX(Salary) AS MaximumSalary
FROM Employees
GROUP BY Department;

-- 32. Minimum salary department-wise
SELECT
    Department,
    MIN(Salary) AS MinimumSalary
FROM Employees
GROUP BY Department;

-- ==========================================
-- HAVING
-- ==========================================

-- 33. Departments having more than 2 employees
SELECT
    Department,
    COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 2;

-- ==========================================
-- DATE & SUBQUERY
-- ==========================================

-- 34. Employees joined after 2024
SELECT *
FROM Employees
WHERE JoiningDate > '2024-01-01';

-- 35. Employees whose salary is greater than average salary
SELECT *
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
);

-- ==========================================
-- STRING FUNCTIONS
-- ==========================================

-- 36. Display employee names in uppercase
SELECT UPPER(EmployeeName)
FROM Employees;

-- 37. Display employee names in lowercase
SELECT LOWER(EmployeeName)
FROM Employees;

-- 38. Display length of employee names
SELECT
    EmployeeName,
    LENGTH(EmployeeName) AS NameLength
FROM Employees;

-- ==========================================
-- DATE FUNCTIONS
-- ==========================================

-- 39. Display current date
SELECT CURRENT_DATE;

-- ==========================================
-- COMBINED QUERY
-- ==========================================

-- 40. Display first 10 employees sorted by joining date
SELECT *
FROM Employees
ORDER BY JoiningDate DESC
LIMIT 10;

-- ==========================================
-- SQL JOINS
-- ==========================================

-- 41. Display customers and their orders
SELECT
    c.CustomerName,
    o.OrderID,
    o.OrderDate
FROM Customers c
INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID;

-- 42. Display customer name and product name

SELECT
    c.CustomerName,
    p.ProductName,
    o.Quantity
FROM Orders o
INNER JOIN Customers c
    ON o.CustomerID = c.CustomerID
INNER JOIN Products p
    ON o.ProductID = p.ProductID;

-- 43. Count orders for each customer

SELECT
    c.CustomerName,
    COUNT(o.OrderID) AS TotalOrders
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;

-- 44. Find customers who have not placed any order

SELECT
    c.CustomerID,
    c.CustomerName
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

-- 45. Display complete order details

SELECT
    o.OrderID,
    c.CustomerName,
    p.ProductName,
    p.Price,
    o.Quantity,
    o.OrderDate
FROM Orders o
INNER JOIN Customers c
    ON o.CustomerID = c.CustomerID
INNER JOIN Products p
    ON o.ProductID = p.ProductID;

-- ==========================================
-- QA DATA VALIDATION QUERIES
-- ==========================================

-- 46. Verify whether an employee exists

SELECT *
FROM Employees
WHERE EmployeeID = 101;

-- 47. Find employees with missing city

SELECT *
FROM Employees
WHERE City IS NULL;

-- 48. Find duplicate user emails

SELECT
    Email,
    COUNT(*) AS EmailCount
FROM Users
GROUP BY Email
HAVING COUNT(*) > 1;

-- 49. Find orders without a valid customer

SELECT
    o.OrderID,
    o.CustomerID
FROM Orders o
LEFT JOIN Customers c
    ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;

-- 50. Find orders without a valid product

SELECT
    o.OrderID,
    o.ProductID
FROM Orders o
LEFT JOIN Products p
    ON o.ProductID = p.ProductID
WHERE p.ProductID IS NULL;

-- 51. Find orders with invalid quantity

SELECT *
FROM Orders
WHERE Quantity <= 0;

-- 52. Find products with invalid price

SELECT *
FROM Products
WHERE Price < 0;

-- 53. Find employees with invalid salary

SELECT *
FROM Employees
WHERE Salary <= 0;

-- 54. Find employees with future joining dates

SELECT *
FROM Employees
WHERE JoiningDate > CURRENT_DATE;

-- 55. Verify customer information

SELECT
    CustomerID,
    CustomerName,
    City,
    Email
FROM Customers
WHERE CustomerID = 1;

-- ==========================================
-- DATA MANIPULATION & TRANSACTIONS
-- ==========================================

-- 56. Insert a new customer

INSERT INTO Customers
    (CustomerID, CustomerName, City, Email)
VALUES
    (5, 'Neha Kulkarni', 'Pune', 'neha@gmail.com');

-- 57. Update customer city

UPDATE Customers
SET City = 'Mumbai'
WHERE CustomerID = 5;

-- 58. Delete a customer

DELETE FROM Customers
WHERE CustomerID = 5;

-- 59. Practice ROLLBACK

START TRANSACTION;

UPDATE Customers
SET City = 'Delhi'
WHERE CustomerID = 1;

ROLLBACK;

-- 60. Practice COMMIT

START TRANSACTION;

UPDATE Customers
SET City = 'Mumbai'
WHERE CustomerID = 1;

COMMIT;

-- ==========================================
-- CONDITIONAL VALIDATION
-- ==========================================

-- 61. Classify employees based on salary

SELECT
    EmployeeName,
    Salary,
    CASE
        WHEN Salary >= 70000 THEN 'High'
        WHEN Salary >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS SalaryCategory
FROM Employees;

-- 62. Validate employee salary

SELECT
    EmployeeID,
    EmployeeName,
    Salary,
    CASE
        WHEN Salary > 0 THEN 'PASS'
        ELSE 'FAIL'
    END AS ValidationResult
FROM Employees;

-- 63. Validate employee city

SELECT
    EmployeeID,
    EmployeeName,
    City,
    CASE
        WHEN City IS NULL THEN 'FAIL - Missing City'
        ELSE 'PASS'
    END AS ValidationResult
FROM Employees;

-- 64. Validate order quantity

SELECT
    OrderID,
    Quantity,
    CASE
        WHEN Quantity > 0 THEN 'PASS'
        ELSE 'FAIL'
    END AS ValidationResult
FROM Orders;

-- 65. Validate product price

SELECT
    ProductID,
    ProductName,
    Price,
    CASE
        WHEN Price >= 0 THEN 'PASS'
        ELSE 'FAIL'
    END AS ValidationResult
FROM Products;

-- 66. Display city or fallback value

SELECT
    EmployeeName,
    COALESCE(City, 'City Not Available') AS City
FROM Employees;

-- ==========================================
-- ADVANCED JOINS & SUBQUERIES
-- ==========================================

-- 67. Display customers and their orders

SELECT
    c.CustomerName,
    o.OrderID,
    o.OrderDate
FROM Customers c
INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID;

-- 68. Display customer, order and product details

SELECT
    c.CustomerName,
    o.OrderID,
    p.ProductName,
    o.Quantity
FROM Orders o
INNER JOIN Customers c
    ON o.CustomerID = c.CustomerID
INNER JOIN Products p
    ON o.ProductID = p.ProductID;

-- 69. Find customers who have no orders

SELECT
    c.CustomerID,
    c.CustomerName
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

-- 70. Find orders without a valid customer

SELECT
    o.OrderID,
    o.CustomerID
FROM Orders o
LEFT JOIN Customers c
    ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;

-- 71. Find orders without a valid product

SELECT
    o.OrderID,
    o.ProductID
FROM Orders o
LEFT JOIN Products p
    ON o.ProductID = p.ProductID
WHERE p.ProductID IS NULL;

-- 72. Find employees earning above average salary

SELECT
    EmployeeID,
    EmployeeName,
    Salary
FROM Employees
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employees
);

-- 73. Find customers who have placed orders

SELECT *
FROM Customers
WHERE CustomerID IN
(
    SELECT CustomerID
    FROM Orders
);

-- ==========================================
-- End of Practice Queries
-- ==========================================
