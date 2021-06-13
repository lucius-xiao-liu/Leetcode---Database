# Write your MySQL query statement below

select company_id, employee_id,employee_name, 
round(case when max(salary) over (partition by company_id) between 1000 and 10000 then (1-0.24)*salary
when max(salary) over (partition by company_id) > 10000 then (1-0.49)*salary else salary end,0) as salary
from salaries
