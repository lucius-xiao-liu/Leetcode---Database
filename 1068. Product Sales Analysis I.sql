select product_name, year, price
from product
join sales on sales.product_id=product.product_id
group by product_name, year,price
order by product_name, year,price
