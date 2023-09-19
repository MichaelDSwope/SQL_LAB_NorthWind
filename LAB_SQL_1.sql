--1 SQL 1st part

CREATE TABLE CustomerOrders (
    CustomerName VARCHAR,
    Item VARCHAR(255),
    Price DECIMAL(38),
    Quantity DECIMAL(38),	
);



INSERT INTO CustomerOrders (CustomerName, Item, Price, Quantity)
VALUES
    ('Acme Hardware', 'Mouse', 25, 3),
    ('Acme Hardware', 'Keyboard', 45, 2),
    ('Falls Realty', 'Macbook', 800, 2),
    ('Julie’s Morning Diner', 'iPad', 525, 1),
    ('Julie’s Morning Diner', 'Credit Card Reader', 45, 1);
	
	SELECT CustomerName, SUM(Price * Quantity) AS TotalPurchase
FROM CustomerOrders
GROUP BY CustomerName;

