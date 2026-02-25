-- PART 1 -- 
SELECT * FROM Employees;
SELECT FirstName, LastName FROM Employees;
DROP TABLE Employees; 

SELECT * FROM Employees WHERE Salary > 50000;
SELECT * FROM Employees WHERE Department = 'Engineering';
SELECT COUNT(*) FROM Employees;
SELECT COUNT(DISTINCT(Department)) FROM Employees; 

SELECT * FROM Employees ORDER BY Salary DESC;
SELECT * FROM Employees ORDER BY LastName ASC;



-- PART 2 -- 
SELECT * FROM Customers WHERE Age BETWEEN 18 AND 30 AND Country NOT IN ('Canada');
SELECT * FROM Csutomers WHERE Country IN ('United States', 'Mexico'); 
-- Alternatively For previous Sql Statement ....  SELECT * FROM Customers WHERE Country = 'United States' or Country = 'Mexico'
SELECT * FROM Customers WHERE (FirstName LIKE 'J%' or FirstName LIKE 'M%') AND LastName NOT LIKE 'son%';
SELECT * FROM Customers WHERE Age NOT BETWEEN 18 AND 65 AND (Country NOT IN ('United States'));
SELECT * FROM Customers WHERE Country = 'Canada' AND (Age > 21 OR AGE IS NULL);

SELECT * FROM Customers WHERE Age BETWEEN 20 AND 29;
SELECT * FROM Customers WHERE Age NOT BETWEEN 30 AND 50;
SELECT * FROM Customers WHERE Age BETWEEN 18 AND 65 AND (AGE NOT BETWEEN 30 AND 40);

SELECT * FROM Customers WHERE Country IN ('United States, Canada, Mexico');
SELECT * FROM Customers WHERE Country NOT IN ('Ukraine', 'Russia');
SELECT * FROM Customers WHERE Country IN ('United States', 'Canada') AND (Age > 21);
SELECT * FROM Customers WHERE Age IN (18,21);

SELECT * FROM Customers WHERE Ages NOT BETWEEN 18 AND 30 AND (Country IN ('United States', 'Canada') AND LastName NOT LIKE 'A%');
SELECT * FROM Customers WHERE Country = 'United States' OR (Ages BETWEEN 25 AND 40 AND(Country = 'Canada'));
SELECT * FROM Customers WHERE Country NOT IN ('United States', 'Canada') AND Age NOT BETWEEN 13 AND 19;
SELECT * FROM Customers WHERE Country IN ('United States', 'Canada') AND AGE NOT BETWEEN 13 AND 19
SELECT * FROM Customers WHERE Country IN ('United States', 'Canada') OR Country IS NULL;
SELECT * FROM Customers WHERE (Age BETWEEN 21 AND 65 AND Country IN ('United States', 'Ukraine')) OR LastName LIKE 'son%'



-- Part 3 -- 
SELECT C1.FirstName AS Customer FROM Customers AS C1
INNER JOIN Customers AS C2 ON C1.Country = C2.Country
WHERE C1.CustomerID < C2.CustomerID AND C1.CustomerID <> C2.CustomerID;

SELECT * FROM Customers AS C1 
INNER JOIN Customers AS C2 ON C1.LastName = C2.LastName 
WHERE C1.CustomerID < C2.CustomerID AND C1.CustomerID <> C2.CustomerIDp;

SELECT * FROM Customers AS C1 INNER JOIN Customers AS C2 
ON C1.Age > C2.Age WHERE C1.CustomerID <>C2.CustomerID;

SELECT * FROM Customers AS C1 
JOIN Customers AS C2 ON C1.AGE > C2.AGE + 10;

SELECT * FROM Customer AS C1 
INNER JOIN Customer AS C2 WHERE C1.CustomerID < C2.CustomerID 

SELECT Country FROM Customers
UNION SELECT Country FROM Owners;

SELECT Country, Age FROM Customers
UNION SELECT Country, Age FROM Owners;

SELECT 'Customer' AS Type, Country, Age FROM Customers WHERE Age < 21
UNION SELECT 'Owners' AS Type Country, Age FROM Owners WHERE AGE > 21;

SELECT 'Customer' AS Type, Country, Age FROM Customers
UNION SELECT 'Owners' AS Type, Country, Age FROM Owners;

SELECT Country,COUNT(COUNTRY) FROM Customers 
GROUP BY Country;

SELECT Avg(Age) FROM Customers 
GROUP BY Country;

SELECT Country, Count(*) FROM Customers 
GROUP BY Country ORDER BY COUNT(*) DESC;


