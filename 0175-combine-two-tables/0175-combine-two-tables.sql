# Write your MySQL query statement below
SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p left outer join address a on p.personId = a.personId