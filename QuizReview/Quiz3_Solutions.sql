-- Phase 1 
UPDATE Customer SET Age = 35, Country = 'Italy' WHERE CustomerID = 6;
UPDATE Customer SET Age = Age + 1 WHERE FirstName = 'John' AND LastName = 'Doe';
DELETE FROM Customer WHERE CustomerID = 7;
UPDATE Customer SET Country = 'Spain' WHERE CustomerID > 4;
DELETE FROM Customer WHERE Age < 13;

-- Phase 2 
SELECT * FROM Customer LIMIT 3;
SELECT * FROM Customer LIMIT (2,4);

-- Phase 3
SELECT FirstName , LastName, Age FROM Customers WHERE Age = (SELECT MIN(AGE) FROM Customers);
SELECT FirstName, LastName, Age FROM Customers WHERE Age = (SELECT MAX(AGE) FROM Customers);
SELECT AVG(Age) FROM Customers;
SELECT COUNT(*) FROM Customers;
SELECT COUNT(DISTINCT(Country)) FROM Customers;
SELECT SUM(Age) FROM Customers;

-- Phase 4 
SELECT * FROM Customers WHERE FirstName LIKE 'A%';
SELECT * FROM Customers WHERE FirstName LIKE '%N';
SELECT * FROM Customers WHERE FirstName LIKE '%AR%';
SELECT * FROM Customers WHERE Firstname LIKE '__';

-- Phase 5 
SELECT * FROM Customers WHERE CustomerID = (SELECT CustomerID FROM Orders);
SELECT * FROM Customers WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);
SELECT * FROM Orders WHERE CustomerID IN (SELECT CustomerID FROM Customers);
UPDATE Orders SET CustomerID = 3 WHERE OrderID = 1;

