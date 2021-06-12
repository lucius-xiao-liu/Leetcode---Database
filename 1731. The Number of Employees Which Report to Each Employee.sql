# Write your MySQL query statement below
select m.employee_id as employee_id,m.name as name,count(e.employee_id) as reports_count,round(avg(e.age),0) as average_age
from employees m
join (select * from employees where reports_to is not null) e
on m.employee_id=e.reports_to
group by 1,2
order by 1
