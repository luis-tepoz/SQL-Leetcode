# Write your MySQL query statement below
SELECT Students.student_id, Students.student_name, su.subject_name, count(Examinations.subject_name) as attended_exams
FROM Students
CROSS JOIN Subjects su
LEFT JOIN Examinations
ON Students.student_id = Examinations.student_id
AND su.subject_name = Examinations.subject_name
GROUP BY su.subject_name, Students.student_id
ORDER BY Students.student_id, su.subject_name