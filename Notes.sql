


-- SECTION 1 --
--   NOTES   -- 

CREATE TABLE Customers(
	CustomerID int PRIMARY KEY,
    FirstName varchar(255),
    LastName varchar(255),
    Age int,
    Country varchar(255)
);
DROP TABLE Customers;

-- BASIC SELECTS 
SELECT * FROM Customers; -- select all columns  
SELECT FirstName, LastName FROM Customers; -- selects specified columns

-- DISTINCT  
SELECT DISTINCT Country FROM Customers; -- select different(unique) values for a given column

-- COUNT 
SELECT COUNT(DISTINCT (Country)) FROM Customers; -- selects count of distinct countries
SELECT COUNT(*) FROM Customers;

-- WHERE 
SELECT * FROM Customers WHERE Country="United States"; -- select from data as long as it follows a condition
SELECT * FROM Customers WHERE Age > 20;

-- ORDER BY
SELECT * FROM Customers ORDER BY Age; -- select data and order the it by Age, default is Ascending Order
SELECT * FROM Customers ORDER BY Age DESC; -- select data and order it by Age adding keyword DESC to change type 
SELECT * FROM Customers ORDER BY FirstName;
SELECT * FROM Customers ORDER BY FirstName DESC;
SELECT * FROM Customers ORDER BY FirstName, Age;






-- SECTION 2 --
--   NOTES	 --

-- And & OR Operators
SELECT * FROM Customers WHERE Country = 'United States' AND FirstName LIKE 'K%';
SELECT * FROM Customers WHERE Country = 'Ukraine' or Age >= 18 ORDER BY AGE DESC;
SELECT * FROM Customers WHERE Age >= 18 AND FirstName Like 'K%' or (Country = 'Ukraine' AND Age < 18 or CustomerID = 2); -- goofy combinations 

-- NOT Operators 
SELECT * FROM Customers WHERE NOT Country = 'United States'; -- Filters data that dont match a specific conidition 
SELECT * FROM Customers WHERE FirstName NOT LIKE 'K%';
SELECT * FROM Customers WHERE AGE NOT BETWEEN 1 And 18;
SELECT * FROM Customers WHERE Country NOT IN ('United States','Ukraine');
SELECT * FROM Customers WHERE NOT Age > 18;
SELECT * FROM Customers WHERE NOT Age < 18;

-- INSERT INTO TABLE 
INSERT INTO Customers VALUES(1,"Kai","Matton",21,"United States"); -- Where Order Matters
INSERT INTO Customers VALUES(2,"Audrie","Rouse",18,"United States");

INSERT INTO Customers (CustomerID, FirstName, LastName, Age, Country) VALUES(3,"Billy","Hoe",15,"Ukraine"); -- Where order doesnt matter if specified 
INSERT INTO Customers (CustomerID, FirstName, LastName, Age, Country) VALUES(4,"Ty","Davis",21,"United States");

INSERT INTO Customers (CustomerID, FirstName, LastName) VALUES(5, "Franklin", "Fiola"); -- Although we only populate half columns it defaults rest to null

-- NULL VALUES
SELECT * FROM Customers WHERE AGE IS NULL;
SELECT * FROM Customers WHERE Country IS NOT NULL;






-- SECTION 3 -- 
--   NOTES   -- 

-- Updating Records (First Lets Create A New Record)
INSERT INTO Customers VALUES (6, 'John', 'Doe', 25, 'Canada');
SELECT * FROM Customers WHERE CustomerID = 6; -- NOTE ** ADDING WHERE CLAUSE PREVENTS UPDATING ALL RECORDS UNDER COLUMN 
UPDATE Customers SET Country = 'Mexico' WHERE CustomerID = 6;
UPDATE Customers SET Age = 28 WHERE CustomerID = 6;
UPDATE Customers SET Age = 32, Country = 'Germany' WHERE CustomerID = 6;

-- Deleting Records (First Lets Create A New Record) 
INSERT INTO CustomerS VALUES (7, 'Peter', 'Parker', 12, 'Canada');
SELECT * FROM Customers WHERE CustomerID = 7;
DELETE FROM Customers WHERE CustomerID = 7; -- NOTE ** ADDING WHERE CLAUSE PREVENTS DELETION OF WHOLE TABLE





-- SECTION 4 --
--   Notes   -- 

-- Limit Clause
SELECT * FROM Customers LIMIT 3;
SELECT * FROM Customers LIMIT 2,4; -- 2 represents the offset, then 4 represents the Limit

-- Aggregate Functions 
SELECT Min(Age) FROM Customers;
SELECT FirstName, LastName, Age FROM Customers WHERE Age = (SELECT Min(Age) FROM Customers);

SELECT Max(Age) FROM Customers;
SELECT FirstName, LastName, Age FROM Customers WHERE Age = (SELECT Max(Age) FROM Customers);

SELECT Sum(Age) FROM Customers;

SELECT Count(*) FROM Customers; 
SELECT Count(DISTINCT(Country)) FROM Customers;

SELECT Avg(Age) FROM Customers;

-- LIKE OPERATOR & WildCards
SELECT * FROM Customers WHERE Country LIKE 'United States';
SELECT * FROM Customers WHERE FirstName LIKE 'K%'; -- Represents Starting With
SELECT * FROM Customers WHERE FirstName LIKE '%A'; -- Represents Ending With 
SELECT * FROM Customers WHERE FirstName LIKE '%K%'; -- Contains at least K 
SELECT * FROM Customers WHERE FirstName LIKE '__'; -- Has only two char (_ is represents some character)
SELECT * FROM Customers WHERE FirstName LIKE 'A_%'; -- Contains A and some sort of char in beggining 

-- Subqueries (First lets create a new table and populate it)
CREATE TABLE Orders(
	OrderID int PRIMARY KEY,
    ItemID int,
    CustomerID int
);
-- lets populate it using the two different methods we used earlier
INSERT INTO Orders(OrderId, CustomerID, ItemID) VALUES (1,1,1);
INSERT INTO Orders VALUES (2,2,2);

SELECT * FROM Customers WHERE CustomerID IN (SELECT CustomerID FROM Orders);
SELECT OrderID FROM Orders WHERE CustomerID IN (SELECT CustomerID FROM Customers);
SELECT * FROM Customers WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

-- lets do some updates, delete to freshen up ! 
UPDATE Orders SET CustomerID = 3 WHERE OrderID = 1;
DELETE FROM Orders WHERE OrderID = 2;




-- Section 5 -- 
--   Notes   -- 

-- Between (In, Not, Text Values, Dates)
SELECT * FROM Customers WHERE Age BETWEEN 16 AND 21;
SELECT * FROM Customers WHERE Age NOT BETWEEN 18 AND 21;
SELECT * FROM Customers WHERE (Age BETWEEN 18 AND 21) AND (CustomerID IN (SELECT CustomerID FROM Orders));
SELECT * FROM Customers WHERE FirstName BETWEEN 'Audrie' AND 'Franklin' ORDER BY FirstName DESC;
SELECT * FROM customers WHERE BirthDate BETWEEN '2008-01-01' AND '2026-01-01';

-- Aliases 
SELECT CustomerID AS ID FROM Customers; 
SELECT FirstName AS 'First Name', LastName AS 'Last Name' FROM Customers; -- Two different columns with Alias using a comma
SELECT CONCAT("Name: ", FirstName," ", LastName, ", Age: " , Age) AS 'User Info' FROM Customers; -- concats two different columns into one
SELECT Persons.CustomerID FROM Customers AS Persons; -- Alias for tables (Also Dot Notation), 

-- Joins


