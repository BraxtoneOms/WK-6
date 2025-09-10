-- =========================================
-- Assignment: Joins and Relationships
-- =========================================
-- Author: [Your Name]
-- Date: [Current Date]
-- =========================================


-- =========================================
-- Question 1 
-- Get the firstName, lastName, email, and officeCode of all employees.
-- Use INNER JOIN to combine employees with offices using officeCode.
-- =========================================

SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM 
    employees AS e
INNER JOIN 
    offices AS o
    ON e.officeCode = o.officeCode;


-- =========================================
-- Question 2 🛍
-- Get the productName, productVendor, and productLine from products.
-- Use LEFT JOIN to combine products with productlines using productLine.
-- =========================================

SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM 
    products AS p
LEFT JOIN 
    productlines AS pl
    ON p.productLine = pl.productLine;


-- =========================================
-- Question 3 
-- Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- Use RIGHT JOIN to combine customers with orders using customerNumber.
-- =========================================

SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM 
    customers AS c
RIGHT JOIN 
    orders AS o
    ON c.customerNumber = o.customerNumber
ORDER BY 
    o.orderDate ASC
LIMIT 10;
