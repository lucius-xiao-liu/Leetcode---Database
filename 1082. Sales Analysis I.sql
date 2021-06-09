# subquries
select seller_id
from sales
group by seller_id
having sum(price) = (select max(total) from (select seller_id, sum(price) as total from sales group by seller_id) t1)
