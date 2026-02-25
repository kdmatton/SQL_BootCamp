-- Phase 1
SELECT * FROM Customers WHERE Country = 'United States' AND Age >= 21;
SELECT * FROM Customers WHERE NOT Country = 'Ukraine';
SELECT * FROM Customers WHERE FirstName NOT LIKE 'A%';
SELECT * FROM Customers WHERE Country = 'Ukraine' OR (AGE > 20 AND LastName = 'Matton');

-- Phase 2 
SELECT * FROM Customers WHERE Age BETWEEN 19 AND 25;
SELECT * FROM Customers WHERE Country IN ('United States', 'Ukraine', 'Canada');
SELECT * FROM Customers WHERE Age NOT BETWEEN 13 AND 19;

-- Phase 3 
SELECT * FROM Customers WHERE Age IS NULL;
SELECT * FROM Customers WHERE Country IS NOT NULL