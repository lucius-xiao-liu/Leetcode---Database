select customer_id
from customers
where year = 2021
group by customer_id
having sum(revenue)>0
