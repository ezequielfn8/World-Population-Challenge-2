SELECT COUNT(*) FROM countries
WHERE continent = 'Africa';

SELECT SUM(population) FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE continent like 'Oceania'
AND year = '2005'; 

SELECT AVG(population) FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE continent = 'South America'
AND year = '2003'; 

SELECT countries.name, MIN (population), year FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE year = '2007';

SELECT name, AVG(population) FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE name = 'Poland';

SELECT COUNT (*) FROM countries
WHERE name LIKE '%The';

SELECT continent, SUM(population), year
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE year = '2010'
GROUP BY 1
ORDER BY 2 DESC;