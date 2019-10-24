select employee.name as Employee
from employee as employee
inner join employee as manager on employee.managerID=manager.id
where employee.salary>manager.salary
