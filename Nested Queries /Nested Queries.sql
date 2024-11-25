-- Nested Queries EXercise 

-- Query #1
USE northwind;

SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice = (
    SELECT MAX(UnitPrice)
    FROM products
);
-- Query #2
USE northwind;

SELECT OrderID, ShipName, ShipAddress
FROM orders
WHERE ShipVia = (
    SELECT ShipperID
    FROM shippers
    WHERE CompanyName = 'Federal Shipping'
);

-- Query #3
Use Northwind;
SELECT DISTINCT od.OrderID
FROM `order details` od  -- Surround table name with backticks
WHERE od.ProductID = (
    SELECT ProductID
    FROM products
    WHERE ProductName = 'Sasquatch Ale'
);

-- Query #4
Use Northwind;
SELECT FirstName, LastName
FROM employees
WHERE EmployeeID = (
    SELECT EmployeeID
    FROM orders
    WHERE OrderID = 10266
);

-- Query #5
SELECT ContactName
FROM customers
WHERE CustomerID = (
    SELECT CustomerID
    FROM orders
    WHERE OrderID = 10266
);

