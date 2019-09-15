# Write your MySQL query statement below
Select max(Salary) as SecondHighestSalary
From Employee
Where Salary < (Select MAX(salary)from Employee)
