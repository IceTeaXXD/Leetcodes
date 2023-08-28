# Write your MySQL query statement below
SELECT id,
  SUM(CASE WHEN month = 'Jan' THEN revenue ELSE null end) AS Jan_Revenue,
  SUM(CASE WHEN month = 'Feb' THEN revenue ELSE null end) AS Feb_Revenue,
  SUM(CASE WHEN month = 'Mar' THEN revenue ELSE null end) AS Mar_Revenue,
  SUM(CASE WHEN month = 'Apr' THEN revenue ELSE null end) AS Apr_Revenue,
  SUM(CASE WHEN month = 'May' THEN revenue ELSE null end) AS May_Revenue,
  SUM(CASE WHEN month = 'Jun' THEN revenue ELSE null end) AS Jun_Revenue,
  SUM(CASE WHEN month = 'Jul' THEN revenue ELSE null end) AS Jul_Revenue,
  SUM(CASE WHEN month = 'Aug' THEN revenue ELSE null end) AS Aug_Revenue,
  SUM(CASE WHEN month = 'Sep' THEN revenue ELSE null end) AS Sep_Revenue,
  SUM(CASE WHEN month = 'Oct' THEN revenue ELSE null end) AS Oct_Revenue,
  SUM(CASE WHEN month = 'Nov' THEN revenue ELSE null end) AS Nov_Revenue,
  SUM(CASE WHEN month = 'Dec' THEN revenue ELSE null end) AS Dec_Revenue
FROM department
group by id
order by id