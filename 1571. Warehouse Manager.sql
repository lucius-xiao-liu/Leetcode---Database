# Write your MySQL query statement below
select w.name as WAREHOUSE_NAME, sum(p2.volume * w.units) as VOLUME
from warehouse w
join (select p.product_id as product_id, p.product_name as product_name, (p.width * p.length * p.height) as volume
     from products p
     group by product_id, product_name) p2 on w.product_id = p2.product_id
group by warehouse_name



# Write your MySQL query statement below
with ware_prod as
(select w.name as name, p.product_id, w.units as units, width*length*height as pro_volume
from products p
join
warehouse w on p.product_id=w.product_id)
 select name as warehouse_name,sum(pro_volume*units) as volume
 from ware_prod
 group by name
 
 
