# Write your MySQL query statement below
select project_id
from project
group by project_id
having count(*)= (select count(employee_id) from project group by project_id order by count(employee_id) desc limit 1)
