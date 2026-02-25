-- Section 1 
SELECT * FROM Customers WHERE Age BETWEEN 16 AND 21;
SELECT * FROM Customers WHERE Age NOT BETWEEN 18 AND 21;

SELECT Distinct(Customers.*) FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE AGE BETWEEN 18 AND 21 

SELECT FirstName, LastName FROM Customers WHERE FirstName BETWEEN 'Audrie' AND 'Franklin' ORDER BY DESC;
SELECT * FROM Customers WHERE Birthday BETWEEN '2008-01-01' AND '2026-01-01';
SELECT CustomerID AS ID FROM Customers;
SELECT CONCAT(FirstName, LastName, Age) AS Customer FROM Customers;
SELECT Persons.CustomerID FROM Customer AS Persons;


-- Section 2 
SELECT * FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
SELECT * FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID; 
SELECT * FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID; 

SELECT CONCAT(C.FirstName, " ", C.LastName) AS Name, Orders.ItemsID 
FROM Customers AS C LEFT JOIN Orders ON Customers.CustomerID = Orders.OrderID 
ORDER AGE DESC

SELECT * FROM (Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID)
INNER JOIN Items ON Items.ItemID = Orders.ItemID;

SELECT C.Age, C.Country, Items.* 
FROM (Customers AS C LEFT JOIN Orders ON C.CustomerID = Orders.CustomerID)
LEFT JOIN Items ON Orders.ItemID = Items.ItemID
ORDER BY Items.ItemPrice ASC;

