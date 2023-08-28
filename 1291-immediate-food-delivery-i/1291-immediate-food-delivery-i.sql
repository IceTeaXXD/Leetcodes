# Write your MySQL query statement below
SELECT
  ROUND(
    SUM(
      CASE 
        WHEN order_date = customer_pref_delivery_date THEN 1 
        ELSE 0
      END
    ) * 100/count(*), 2
  )
AS immediate_percentage
FROM delivery