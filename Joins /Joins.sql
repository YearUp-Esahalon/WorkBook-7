-- Joins Exercise 
-- 1: 
Use Northwind;
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryName, p.ProductName;

-- 2: 
SELECT p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName AS SupplierName
FROM products p
JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 75
ORDER BY p.ProductName;

-- 3: 
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName, s.CompanyName AS SupplierName
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID
JOIN suppliers s ON p.SupplierID = s.SupplierID
ORDER BY p.ProductName;

-- 4: 
Use Northwind;
SELECT p.ProductName, c.CategoryName
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID
WHERE p.UnitPrice = (
    SELECT MAX(UnitPrice)
    FROM products
);

-- 5 
Use Northwind;
SELECT o.OrderID, o.ShipName, o.ShipAddress, s.CompanyName AS ShippingCompany
FROM orders o
JOIN shippers s ON o.ShipVia = s.ShipperID
WHERE o.ShipCountry = 'Germany';

-- 6: 
USE northwind;
SELECT o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
FROM orders o
JOIN orderdetails od ON o.OrderID = od.OrderID
JOIN products p ON od.ProductID = p.ProductID
WHERE p.ProductName = 'Sasquatch Ale';

