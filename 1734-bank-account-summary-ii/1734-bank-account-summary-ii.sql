# Write your MySQL query statement below
select name, SUM(amount) AS balance
from users natural join transactions
group by account
HAVING SUM(amount) > 10000