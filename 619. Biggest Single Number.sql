# Write your MySQL query statement below
select max(num) as num
from (select num,count(num) as count from my_numbers group by num) t
where count=1
