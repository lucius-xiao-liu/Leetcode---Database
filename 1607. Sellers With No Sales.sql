select seller_name
from seller
where seller_name not in (
    select seller_name
    from seller
    join orders on seller.seller_id=orders.seller_id 
    where year(sale_date)=2020 
    group by seller_name)
group by seller_name
order by seller_name 
