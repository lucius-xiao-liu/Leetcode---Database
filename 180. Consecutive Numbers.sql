# Write your MySQL query statement below
select l1.num as ConsecutiveNums
from logs l1
join logs l2 on l1.id+1=l2.id
join logs l3 on l2.id+1=l3.id
where l1.num=l2.num and l2.num=l3.num and l3.num=l1.num
group by ConsecutiveNums
