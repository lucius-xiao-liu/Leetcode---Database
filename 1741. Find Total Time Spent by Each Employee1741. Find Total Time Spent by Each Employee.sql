# Write your MySQL query statement below
select event_day as day, emp_id, sum(duration) as total_time
from (select event_day, emp_id, out_time-in_time as duration from employees) as emp_timestamps
group by event_day, emp_id;


SELECT EVENT_DAY AS DAY, EMP_ID, (SUM(OUT_TIME)-SUM(IN_TIME)) AS TOTAL_TIME
FROM EMPLOYEES GROUP BY DAY, EMP_ID;
