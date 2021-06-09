# Others' answer
select salesperson.name
from orders o join company c on (o.com_id = c.com_id and c.name = 'RED')
right join salesperson on salesperson.sales_id = o.sales_id
where o.sales_id is null;

# Write your MySQL query statement below
select name
from salesperson 
where name not in 
(select sp.name
from salesperson sp
join orders o on sp.sales_id=o.sales_id
join company c on o.com_id=c.com_id
where c.name='Red')
