# Write your MySQL query statement below
SELECT contest_id, 
ROUND(
  COUNT(distinct user_id) / (SELECT COUNT(user_id) FROM users) * 100
  ,2
) AS percentage
FROM register
GROUP BY contest_id
ORDER BY percentage desc, contest_id