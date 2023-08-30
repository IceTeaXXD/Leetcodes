# Write your MySQL query statement below
SELECT a.machine_id,
ROUND
(
  (
    SELECT AVG(a1.timestamp) 
    FROM activity a1
    WHERE activity_type = 'end'
    AND a.machine_id = a1.machine_id
  )
  -
  (
    SELECT AVG(a1.timestamp)
    FROM activity a1
    WHERE activity_type = 'start'
    AND a.machine_id = a1.machine_id
  )
  ,3
) AS processing_time
FROM activity a
GROUP BY a.machine_id