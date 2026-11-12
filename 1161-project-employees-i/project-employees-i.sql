# Write your MySQL query statement below
SELECT project_id, round(sum(experience_years) / count(p.employee_id), 2) as average_years
FROM Project p
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY project_id