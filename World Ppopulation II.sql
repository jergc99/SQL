--3
SELECT COUNT (*) 
FROM countries
WHERE continent = "Africa";

--4
SELECT SUM(population)
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2005
AND continent = 'Oceania';

--5
SELECT AVG(population)
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2003
AND continent = 'South America';

--6
SELECT MIN (population),
name
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2007;

--7
SELECT AVG(population),
name
FROM population_years
INNER JOIN countries ON
countries.id = population_years.country_id
WHERE name= "Poland";

--8
SELECT COUNT(*)
FROM countries
WHERE name LIKE "%The%";

--9
SELECT SUM(population),
continent
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY continent;