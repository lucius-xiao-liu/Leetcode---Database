# The following solution provided by @BilalSubhani: https://github.com/BilalSubhani
# Thank you!
  
WITH EmployeeCounts AS (
SELECT
employee_id,
COUNT(*) AS count,
MAX(primary_flag) AS primary_flag
FROM
Employee
GROUP BY
employee_id
)
SELECT
e.employee_id,
COALESCE(
MAX(CASE WHEN e.primary_flag = 'Y' THEN e.department_id ELSE NULL END),
MIN(CASE WHEN e.primary_flag = 'N' THEN e.department_id ELSE NULL END)
) AS department_id
FROM
Employee e
JOIN
EmployeeCounts ec ON e.employee_id = ec.employee_id
GROUP BY
e.employee_id
HAVING
COUNT(CASE WHEN e.primary_flag = 'Y' THEN e.department_id ELSE NULL END) = 1
OR COUNT(CASE WHEN e.primary_flag = 'N' THEN e.department_id ELSE NULL END) = 1
OR 'Y' IN (SELECT primary_flag FROM Employee WHERE employee_id = e.employee_id);




# old solution, won't work after the test changed
select employee_id, department_id
from employee
group by employee_id
having count(employee_id)=1
union
select employee_id, department_id
from employee 
where primary_flag = 'Y'
