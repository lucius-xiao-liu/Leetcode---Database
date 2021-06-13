# Write your MySQL query statement below
select employee_id
from employees
where manager_id = 1 and employee_id <>1
union 
select employee_id
from employees
where manager_id in (select employee_id
from employees
where manager_id = 1 and employee_id <>1)
union 
select employee_id
from employees
where manager_id in (select employee_id
from employees
where manager_id in (select employee_id
from employees
where manager_id = 1 and employee_id <>1));



#
SELECT e1.employee_id
FROM Employees e1,
     Employees e2,
     Employees e3
WHERE e1.manager_id = e2.employee_id
  AND e2.manager_id = e3.employee_id
  AND e3.manager_id = 1 
  AND e1.employee_id != 1;
  
  
  #
  with recursive cte as
(
select employee_id from employees where manager_id=1 and employee_id!=1
union all
select a.employee_id from employees a join cte b on (b.employee_id=a.manager_id) 
)
select employee_id from cte
