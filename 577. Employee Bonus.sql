# Write your MySQL query statement below
select name, bonus
from employee
left join bonus on employee.empid=bonus.empid
where bonus is null or bonus<1000
