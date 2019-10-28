select department, employee, salary from
(select d.name as Department, e.name as Employee, e.salary as Salary, DENSE_RANK() over
(Partition by d.name order by e.salary desc) as dpt_sal_ranking
from employee e
inner join department as d on e.departmentid = d.id) dpt_sal
 where dpt_sal_ranking <4
