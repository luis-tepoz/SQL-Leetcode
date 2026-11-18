# Write your MySQL query statement below
SELECT ROUND(COUNT(a2.player_id) / COUNT(a1.player_id), 2) as fraction
FROM Activity a1
LEFT JOIN Activity a2
ON a1.player_id = a2.player_id AND DATEDIFF(a2.event_date, a1.event_date) = 1
WHERE (a1.player_id, a1.event_date) IN (SELECT player_id, MIN(event_date) FROM Activity GROUP BY player_id)
