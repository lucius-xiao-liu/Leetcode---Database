# Exists:
# Write your MySQL query statement below
SELECT id, name
FROM Students s
WHERE NOT EXISTS (
    SELECT id
    FROM Departments 
    WHERE id = s.department_id
);


# Not In
SELECT id, name FROM Students
WHERE department_id not in (SELECT id from Departments);


# Left/Right Join
select s.id as id, s.name as name 
from students s
left join departments d
on s.department_id = d.id
where d.name is null
group by id, name
