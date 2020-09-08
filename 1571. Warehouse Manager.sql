# Write your MySQL query statement below
select w.name as WAREHOUSE_NAME, sum(p2.volume * w.units) as VOLUME
from warehouse w
join (select p.product_id as product_id, p.product_name as product_name, (p.width * p.length * p.height) as volume
     from products p
     group by product_id, product_name) p2 on w.product_id = p2.product_id
group by warehouse_name
