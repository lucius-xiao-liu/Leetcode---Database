# Write your MySQL query statement below
select unique_id, name
from employeeUNI
right join Employees on EmployeeUNI.id=employees.id

# Write your MySQL query statement below
select unique_id,name
from employeeuni
right join employees
using (id)

