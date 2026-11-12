# Write your MySQL query statement below
SELECT max(num) as num
FROM (
SELECT num as num
FROM Mynumbers
GROUP BY num
HAVING COUNT(*) = 1
) as Mynum