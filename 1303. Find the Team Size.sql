# Write your MySQL query statement below
select employee_id, team_size
from employee
join (select team_id, count(*) as team_size from employee group by team_id) team
on employee.team_id=team.team_id


# Window Functions
select employee_id, count(employee_id) over(partition by team_id) as team_size
from Employee
