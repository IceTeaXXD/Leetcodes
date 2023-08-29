# Write your MySQL query statement below
select project_id, round(avg(experience_years),2) as average_years
from employee natural join project
group by project_id