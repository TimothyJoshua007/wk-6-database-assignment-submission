-- 📚 Assignment SQL Answers

-- ============================
-- Question 1 🧑‍💼
-- Get firstName, lastName, email, and officeCode of all employees
-- Use INNER JOIN to combine employees with offices using officeCode
-- ============================
SELECT e.firstName,         -- Employee's first name
       e.lastName,          -- Employee's last name
       e.email,             -- Employee's email
       e.officeCode         -- Office code where the employee works
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;  -- Match employees with their office


-- ============================
-- Question 2 🛍️
-- Get productName, productVendor, and productLine from products
-- Use LEFT JOIN to combine products with productlines using productLine
-- ============================
SELECT p.productName,       -- Name of the product
       p.productVendor,     -- Vendor/manufacturer of the product
       p.productLine        -- Product line category
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;  -- Show all products, even if no matching product line


-- ============================
-- Question 3 📦
-- Retrieve orderDate, shippedDate, status, and customerNumber
-- Show only the first 10 orders
-- Use RIGHT JOIN to combine customers with orders using customerNumber
-- ============================
SELECT o.orderDate,         -- Date the order was placed
       o.shippedDate,       -- Date the order was shipped
       o.status,            -- Current status of the order
       o.customerNumber     -- Customer who placed the order
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber  -- Include all orders even if no customer match
LIMIT 10;  -- Show only the first 10 results
