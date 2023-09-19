--1.
SELECT * FROM Customers;

--2.
SELECT DISTINCT Country FROM Customers;

--3.
SELECT * FROM Customers WHERE CustomerID LIKE 'BL%';

--4.
SELECT * FROM Orders
 "100";

--5.
SELECT * FROM Customers
WHERE PostalCode IN ('1010', '3012', '12209', '05023');

--6.
SELECT * FROM Orders
WHERE ShipRegion IS NOT NULL;

--7.
SELECT * FROM Customers
ORDER BY Country, City;

--8.
INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
VALUES ('NewCustomerID', 'NewCompany', 'NewContactName', 'NewContactTitle', 'NewAddress', 'NewCity', 'NewRegion', 'NewPostalCode', 'NewCountry', 'NewPhone', 'NewFax');

--9.
UPDATE Orders
SET ShipRegion = 'EuroZone'
WHERE ShipCountry = 'France';


--10.
--Quantity and OrderDetails as listed on assignment
DELETE FROM OrderDetails
WHERE Quantity = 1;


--11.
SELECT CustomerID FROM Orders
WHERE OrderID = 10290;

--12.
SELECT *
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--13.
SELECT FirstName FROM Employees
WHERE ReportsTo IS NULL;


--14.
SELECT FirstName FROM Employees
WHERE ReportsTo = (SELECT EmployeeID FROM Employees WHERE FirstName = 'Andrew');



--Extra Challenges
--15.
--incorrect syntax. Quantity and OrderDetails as listed on assignment
SELECT AVG(Quantity) AS AvgQuantity, MAX(Quantity) AS MaxQuantity, MIN(Quantity) AS MinQuantity
FROM OrderDetails;

--16.
SELECT * FROM Customers
WHERE City IN ('London', 'Paris');

--17.
SELECT * FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--18.
SELECT * FROM Orders
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--19.
SELECT * FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--20.
SELECT DISTINCT City FROM Customers
WHERE City IS NOT NULL;

--21.
SELECT FirstName FROM Employees
ORDER BY FirstName;

--22.
--Quantity and UnitPrice as listed on assignment and in table
SELECT OrderID, SUM(Quantity * UnitPrice) AS Total
FROM OrderDetails
GROUP BY OrderID;
