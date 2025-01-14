-- Solution Exercise 12 --
SELECT COUNT(*) FROM CITY WHERE POPULATION > 100000;

-- Solution Exercise 13 --
SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT = 'California';

-- Solution Exercise 14 --
SELECT AVG(POPULATION) FROM CITY WHERE DISTRICT = 'California';

-- Solution Exercise 15 --
SELECT ROUND(AVG(POPULATION)) FROM CITY;

-- Solution Exercise 16 --
SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE = 'JPN';

-- Solution Exercise 17 --
SELECT MAX(POPULATION) - MIN(POPULATION) FROM CITY;

-- Solution Exercise 18 --
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary,0,''))) FROM EMPLOYEES;

-- Solution Exercise 19 --
SELECT 
CASE WHEN (A + B) <= C OR (A + C) <= B OR (B + C) <= A THEN 'Not A Triangle'
     WHEN A = B AND B = C AND A = C THEN 'Equilateral'
     WHEN A <> B AND B <> C AND A <> C THEN 'Scalene'
     WHEN ((A = B) AND (B <> C)) OR ((A = C) AND (C <> B)) OR ((B = C) AND (C <> A)) THEN 'Isosceles'
END 
FROM TRIANGLES;

-- Solution Exercise 20 --
SELECT 
	(salary * months), 
    COUNT(*) 
FROM Employee
WHERE (salary * months) = (SELECT MAX(salary * months) FROM Employee)
GROUP BY (salary * months);

-- Solution Exercise 21 --
SELECT 
    ROUND(SUM(LAT_N),2),
    ROUND(SUM(LONG_W),2)
FROM STATION;

-- Solution Exercise 22 --
SELECT 
	ROUND(SUM(LAT_N),4) 
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;

-- Solution Exercise 23 --
SELECT 
	ROUND(MAX(LAT_N),4) 
FROM STATION
WHERE LAT_N < 137.2345;

-- Solution Exercise 24 --
SELECT 
	ROUND(LONG_W,4) 
FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);

-- Solution Exercise 25 --
SELECT 
	ROUND(MIN(LAT_N),4) 
FROM STATION 
WHERE LAT_N > 38.7780;

-- Solution Exercise 26 --
SELECT 
	ROUND(LONG_W,4) 
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.7780);