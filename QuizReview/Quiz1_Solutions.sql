-- LEVEL 1 -- 
SELECT * FROM Customers;
SELECT FirstName, LastName FROM Customers;
DROP TABLE Customers; 

-- LEVEL 2 -- 
SELECT * FROM Customers WHERE AGE > 18;
SELECT * FROM Customers WHERE Country='Ukraine';
SELECT COUNT(*) FROM Customers;
SELECT DISTINCT(Country) FROM Customers;

-- LEVEL 3 --
SELECT * FROM Customers ORDER BY AGE DESC;
SELECT * FROM Customers ORDER BY LastName DESC;
SELECT * FROM Customers ORDER BY Country, LastName;