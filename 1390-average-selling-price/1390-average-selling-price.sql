# Write your MySQL query statement below
SELECT product_id, 
ROUND(
  SUM(price*units)/sum(units)
  ,2) 
AS average_price
FROM unitssold NATURAL JOIN prices
WHERE purchase_date BETWEEN start_date AND end_date
GROUP BY product_id