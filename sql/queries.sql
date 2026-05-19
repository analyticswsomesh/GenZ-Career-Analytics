/*

DESCRIPTION:
This SQL analysis explores Gen-Z career aspirations,
salary expectations, work preferences, and workplace
motivations using survey data.

*/


-- 1: What industries are Gen-Z most interested in?

SELECT career,
       COUNT(*) AS total_count
FROM (
    SELECT [Career goal.1] AS career FROM GenZ
    UNION ALL
    SELECT [Career goal.2] FROM GenZ
    UNION ALL
    SELECT [Career goal.3] FROM GenZ
) AS combined
GROUP BY career
ORDER BY total_count DESC;



-- 2: What factors influence Gen-Z career choices?

SELECT [Career Influence Factor],
       COUNT(*) AS total
FROM GenZ
GROUP BY [Career Influence Factor]
ORDER BY total DESC;



-- 3: Preferred work environment

SELECT [Preferred work env],
       COUNT(*) AS total
FROM GenZ
GROUP BY [Preferred work env]
ORDER BY total DESC;



-- 4: Salary expectations after 3 years

SELECT [Salary 0-3yrs],
       COUNT(*) AS total
FROM GenZ
GROUP BY [Salary 0-3yrs]
ORDER BY total DESC;


-- 5: Social impact importance score

SELECT AVG([Social impact importance]) AS avg_score
FROM GenZ;