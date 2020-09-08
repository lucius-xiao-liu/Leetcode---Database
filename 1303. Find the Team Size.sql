# Write your MySQL query statement below
select employee_id, team_size
from employee
join (select team_id, count(*) as team_size from employee group by team_id) team
on employee.team_id=team.team_id
