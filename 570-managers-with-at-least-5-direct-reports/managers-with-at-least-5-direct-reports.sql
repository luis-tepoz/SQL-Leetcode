# Write your MySQL query statement below
SELECT e2.name as name
FROM Employee e1
INNER JOIN Employee e2
ON e1.managerId = e2.id
GROUP BY e2.name, e2.id
HAVING count(e2.id) >= 5
