select product_id,
    sum(case when store = 'store1' then price else null end) store1,
    sum(case when store = 'store2' then price else null end) store2,
    sum(case when store = 'store3' then price else null end) store3
from products
group by product_id

-- (My SQL)
