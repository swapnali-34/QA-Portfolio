-- ==========================================
-- SQL Validation Queries
-- E-Commerce Database Testing
-- CompanyDB
-- ==========================================

-- Purpose:
-- These queries are used to validate backend database
-- data against defined business requirements.
--
-- Tables Used:
-- Customers
-- Products
-- Orders
-- Users
-- Employees
--
-- QA Principle:
-- The queries identify invalid data and verify
-- whether business rules are satisfied.
-- ==========================================


-- ==========================================
-- BR-01: Customer Email Validation
-- Requirement:
-- Every customer must have an email address.
-- ==========================================

SELECT
    CustomerID,
    CustomerName,
    Email
FROM Customers
WHERE Email IS NULL
   OR TRIM(Email) = '';


-- ==========================================
-- BR-02: Customer Email Uniqueness
-- Requirement:
-- Customer email must be unique.
-- ==========================================

SELECT
    Email,
    COUNT(*) AS DuplicateCount
FROM Customers
WHERE Email IS NOT NULL
  AND TRIM(Email) <> ''
GROUP BY Email
HAVING COUNT(*) > 1;


-- ==========================================
-- BR-03: Product Price Validation
-- Requirement:
-- Product price must be greater than 0.
-- ==========================================

SELECT
    ProductID,
    ProductName,
    Price,
    CASE
        WHEN Price > 0 THEN 'PASS'
        ELSE 'FAIL'
    END AS Result
FROM Products;


-- ==========================================
-- BR-04: Valid Customer Relationship
-- Requirement:
-- Every order must belong to a valid customer.
--
-- Find orphan orders.
-- ==========================================

SELECT
    o.OrderID,
    o.CustomerID
FROM Orders o
LEFT JOIN Customers c
    ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;


-- ==========================================
-- BR-05: Valid Product Relationship
-- Requirement:
-- Every order must reference a valid product.
--
-- Find orders with invalid product references.
-- ==========================================

SELECT
    o.OrderID,
    o.ProductID
FROM Orders o
LEFT JOIN Products p
    ON o.ProductID = p.ProductID
WHERE p.ProductID IS NULL;


-- ==========================================
-- BR-06: Order Quantity Validation
-- Requirement:
-- Order quantity must be greater than 0.
-- ==========================================

SELECT
    OrderID,
    Quantity,
    CASE
        WHEN Quantity > 0 THEN 'PASS'
        ELSE 'FAIL'
    END AS ValidationResult
FROM Orders;


-- ==========================================
-- BR-07: Future Order Date Validation
-- Requirement:
-- Order date cannot be in the future.
-- ==========================================

SELECT
    OrderID,
    OrderDate
FROM Orders
WHERE OrderDate > CURRENT_DATE;


-- ==========================================
-- FINAL QA VALIDATION REPORT
--
-- Requirements:
-- 1. Customer must exist
-- 2. Product must exist
-- 3. Quantity must be greater than 0
-- 4. Order date must not be in the future
-- ==========================================

SELECT
    o.OrderID,
    o.CustomerID,
    o.ProductID,
    o.Quantity,
    o.OrderDate,
    CASE
        WHEN c.CustomerID IS NULL THEN 'FAIL'
        WHEN p.ProductID IS NULL THEN 'FAIL'
        WHEN o.Quantity <= 0 THEN 'FAIL'
        WHEN o.OrderDate > CURRENT_DATE THEN 'FAIL'
        ELSE 'PASS'
    END AS ValidationResult
FROM Orders o
LEFT JOIN Customers c
    ON o.CustomerID = c.CustomerID
LEFT JOIN Products p
    ON o.ProductID = p.ProductID;


-- ==========================================
-- End of SQL Validation Queries
-- ==========================================
