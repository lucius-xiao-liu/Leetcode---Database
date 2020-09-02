# Write your MySQL query statement below
select DATE_FORMAT(order_date, '%Y-%m') AS month, count(order_id) as order_count, count(distinct(customer_id)) as customer_count
from orders
where invoice>20
group by month



Using concat(year(order_date), '-',mont(order_date)) as month but formatting is different than the answer. Still a good solution
