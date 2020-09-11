# Write your MySQL query statement below
select id,
sum(case when month='Jan' then revenue end) as Jan_revenue,
sum(case when month='Feb' then revenue end) as Feb_revenue,
sum(case when month='Mar' then revenue end) as Mar_revenue,
sum(case when month='Apr' then revenue end) as Apr_revenue,
sum(case when month='May' then revenue end) as May_revenue,
sum(case when month='Jun' then revenue end) as Jun_revenue,
sum(case when month='Jul' then revenue end) as Jul_revenue,
sum(case when month='Aug' then revenue end) as Aug_revenue,
sum(case when month='Sep' then revenue end) as Sep_revenue,
sum(case when month='Oct' then revenue end) as Oct_revenue,
sum(case when month='Nov' then revenue end) as Nov_revenue,
sum(case when month='Dec' then revenue end) as Dec_revenue
from department
group by id
