SELECT * FROM customers;
SELECT DISTINCT country FROM customers;
SELECT * FROM customers WHERE CustomerId lIKE 'BL%';
SELECT * FROM orders LIMIT 100;
SELECT * FROM customers WHERE PostalCode = '1010' OR  PostalCode = '3012' OR PostalCode = '12209' OR PostalCode = '1010' OR PostalCode = '05023';
SELECT * FROM orders WHERE ShipRegion IS NOT NULL;
SELECT * FROM customers ORDER BY country, city;
-- INSERT INTO customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, Image, ImageThumbnail)
--  VALUES ('POFCA', 'Piece Of Cake', 'Jackie Zablah', 'Owner', '20223 Gran River Av.', 'Novi', 'SW', '48375','USA','(248) 826 32 78', 'NULL', 'NULL', 'NULL');   
 UPDATE orders SET ShipRegion = 'EuroZone' WHERE ShipCountry = 'France';
 DELETE  FROM `order details` WHERE Quantity = 1;
 SELECT AVG(Quantity) AS average,  MAX(Quantity) AS maximo,  MIN(Quantity) AS MINIMO FROM `order details`;
SELECT AVG(Quantity) AS average,  MAX(Quantity) AS maximo,  MIN(Quantity) AS MINIMO FROM `order details` group by OrderID;
SELECT CustomerID FROM orders WHERE OrderID = 10290;
SELECT orders.OrderID, customers.ContactName FROM orders INNER JOIN customers ON orders.CustomerID = customers.CustomerID;
SELECT customers.CustomerID, customers.CompanyName, customers.ContactName, customers.ContactTitle, customers.Address, customers.City, 
customers.Region, customers.PostalCode, customers.Country, customers.Phone, customers.Fax, customers.Image, customers.ImageThumbnail
FROM customers LEFT JOIN orders ON Customers.CustomerID = Orders.CustomerID;
 
SELECT orders.OrderID, orders.CustomerID, orders.EmployeeID, orders.OrderDate, orders.RequiredDate, orders.ShippedDate, orders.ShipVia,
orders.Freight, orders.ShipName, orders.ShipAddress, orders.ShipCity, orders.ShipRegion, orders.ShipPostalCode, orders.ShipCountry 
FROM customers RIGHT JOIN orders ON Customers.CustomerID = Orders.CustomerID;

SELECT FirstName FROM employees WHERE ReportsTo IS NULL;

SELECT FirstName FROM employees WHERE ReportsTo = 2;



