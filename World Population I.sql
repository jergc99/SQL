-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:
--4
SELECT Max(population)
from population_years
WHERE country = "Gabon";
--5
SELECT country
FROM population_years
WHERE year = 2005
ORDER BY population ASC LIMIT 10;
--6
SELECT DISTINCT country
FROM population_years
WHERE population > 100 and YEAR = 2010;
--7
SELECT COUNT (*)
FROM population_years
WHERE country LIKE "%Islands%";
--8
SELECT * 
FROM population_years
WHERE country = "Indonesia" and year = 2000
OR country = "Indonesia" and year = 2010;