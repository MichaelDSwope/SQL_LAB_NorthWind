--SQL 2nd part


CREATE TABLE CustomerOrders (
    CustomerName VARCHAR(MAX),
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

	SELECT 
    CustomerName,
    price * quantity AS total_price
	FROM 
    CustomerOrders;

	SELECT CustomerName,(Item) AS Header
FROM CustomerOrders
GROUP BY CustomerName,(Item);

	SELECT 
    COALESCE(CustomerName, 'Joe’s Chicago Pizza') AS Customer,
    CASE WHEN Item IS NOT NULL THEN Item ELSE '**No Orders**' END AS Item,
    CASE WHEN Item IS NOT NULL THEN Price ELSE NULL END AS Price,
    CASE WHEN Item IS NOT NULL THEN Quantity ELSE NULL END AS Quantity
FROM CustomerOrders
ORDER BY CustomerName, Item;
