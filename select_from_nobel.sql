-- set the query so that it displays Nobel prizes for 1950. 
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

--  Show who won the 1962 prize for Literature. 
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature';

-- Show the year and subject that won 'Albert Einstein' his prize. 
SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein';   

-- Give the name of the 'Peace' winners since the year 2000, including 2000. 
SELECT winner FROM nobel
WHERE yr >= 2000 AND subject = 'Peace';

-- Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive. 
SELECT * FROM nobel 
WHERE (yr BETWEEN 1980 AND 1989) AND subject = 'Literature';

-- Show the winners with first name John 
SELECT winner FROM nobel
WHERE winner LIKE 'John %';

-- Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
SELECT * FROM nobel
WHERE (subject = 'Physics' AND yr = 1980) 
  OR (subject = 'Chemistry' AND yr = 1984);

-- Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
SELECT * FROM nobel
WHERE yr = 1980 AND ((subject NOT LIKE 'Chemistry') AND (subject NOT LIKE 'Medicine'));

-- Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004) 
SELECT * FROM nobel
WHERE (yr < 1910 AND subject = 'Medicine') 
  OR (yr >= 2004 AND subject = 'Literature');

-- Find all details of the prize won by PETER GRÜNBERG
SELECT * FROM nobel 
WHERE winner LIKE 'PETER GR_NBERG';

-- Find all details of the prize won by EUGENE O'NEILL 
SELECT * FROM nobel
WHERE winner LIKE 'EUGENE O''NEILL';

-- List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.
SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'Sir %';

-- Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
SELECT winner, subject 
  FROM nobel
 WHERE yr=1984
 ORDER BY 
CASE WHEN subject IN ('Physics','Chemistry') THEN 1 ELSE 0 END, subject,winner;