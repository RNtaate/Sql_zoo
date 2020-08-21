-- Show the total population of the world. 
SELECT SUM(population)
FROM world;

-- List all the continents - just once each. 
SELECT continent FROM world
GROUP BY continent;

-- Give the total GDP of Africa 
SELECT SUM(gdp) AS Africa_GDP FROM world
WHERE continent = 'Africa';

-- What is the total population of ('Estonia', 'Latvia', 'Lithuania') 
SELECT SUM(population) as total_popn FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania');

-- For each continent show the continent and number of countries. 
SELECT continent, count(*) FROM world
GROUP BY continent;

-- For each continent show the continent and number of countries with populations of at least 10 million. 
SELECT continent, count(*) FROM world
WHERE population >= 10000000
GROUP BY continent;

-- List the continents that have a total population of at least 100 million. 
SELECT continent FROM world
GROUP BY continent HAVING SUM(population) >= 100000000;