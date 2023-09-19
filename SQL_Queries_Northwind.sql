--1
SELECT * FROM Customers;

--2
SELECT DISTINCT Country FROM Customers;

--3
SELECT * FROM Customers WHERE CustomerID LIKE 'BL%';

--4
SELECT TOP 100 * FROM Orders;

--5
SELECT * FROM Customers WHERE PostalCode IN ('1010', '3012', '12209', '05023');

--6
SELECT * FROM Orders WHERE ShipRegion IS NOT NULL;

--7
SELECT * FROM Customers ORDER BY Country, City;
INSERT INTO Customers (CustomerID, CompanyName, ContactName, Country) 

--8
VALUES ('NEWCUST', 'New Company', 'John Doe', 'USA');

--9
UPDATE Orders SET ShipRegion = 'EuroZone' WHERE ShipCountry = 'France';

--10
DELETE  FROM [Northwind].[dbo].[Orders]
WHERE EmployeeID = 1

--11
SELECT CustomerID FROM Orders WHERE OrderID = 10290;

--12
SELECT *
FROM orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--13
SELECT FirstName FROM Employees WHERE ReportsTo IS NULL;

--14
SELECT FirstName FROM Employees WHERE ReportsTo = (SELECT EmployeeID FROM Employees WHERE FirstName = 'Andrew');


