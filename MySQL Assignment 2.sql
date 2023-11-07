#Task 1
USE world;
SELECT COUNT(DISTINCT(Name))
FROM city
WHERE CountryCode = 'USA';
#Task 2
SELECT Code,Name, Population,LifeExpectancy
FROM country
WHERE Name="Argentina";
#Task 3
SELECT *
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;
# Task 4
SELECT *
FROM city 
WHERE Name LIKE "F%"
LIMIT 25;
# Task 5
SELECT ID, Name, Population 
FROM city
LIMIT 10;
# Task 6 
SELECT *
FROM city
WHERE Population>2000000
ORDER BY Population;

# Task 7
SELECT *
FROM city
WHERE Name LIKE "Be%";

# Task 8
SELECT *
FROM city
WHERE Population BETWEEN 500000 AND 1000000
ORDER BY Population ASC;

# Task 9
SELECT *
FROM city 
ORDER BY Population ASC
LIMIT 1;

#Challenge1-Create an SQL statement to find the capital of Spain
SELECT cn.Code,cn.Name AS CountryName, ci.Name AS Capital
FROM city as ci
CROSS JOIN country as cn 
ON ci.ID = cn.Capital
WHERE cn.Name = "Spain";

#Challenge2-Create an SQL statement to list all the languages spoken in the carribean
SELECT cl.CountryCode,cl.Language, cn.Region
FROM countrylanguage AS cl
CROSS JOIN country AS cn
ON cn.Code = cl.CountryCode
WHERE Region = "Caribbean"
ORDER BY cl.CountryCode,cl.Language;

#Challenge1-Create an SQL statement to find all cities form the Europe continent
SELECT cn.Name AS Country,ci.Name AS City,ci.District,cn.Continent
FROM city as ci
CROSS JOIN country as cn
ON ci.CountryCode = cn.Code 
WHERE Continent = "Europe"
ORDER BY cn.Name,ci.Name;
