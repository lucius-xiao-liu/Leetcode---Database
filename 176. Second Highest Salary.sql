# limit offset
SELECT
    (SELECT DISTINCT
            Salary
        FROM
            Employee
        ORDER BY Salary DESC
        LIMIT 1 OFFSET 1) AS SecondHighestSalary





#dense_rank()

with CTE as(
select salary, dense_rank() over (order by Salary DESC) as grader from Employee)

select max(salary) as SecondHighestSalary from CTE 
where grader=2

