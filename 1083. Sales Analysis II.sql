# Write your MySQL query statement below
select distinct buyer_id
from sales join product using(product_id)
where product_name = 'S8' 
and buyer_id not in (select distinct buyer_id
                    from sales join product using(product_id)
                    where product_name = 'iPhone' )
                    
                    
SELECT 
    DISTINCT buyer_id
FROM 
    Sales
WHERE 
    buyer_id IN ( SELECT 
                    s.buyer_id
                  FROM
                    Sales s
                  INNER JOIN 
                    Product p
                    ON s.product_id = p.product_id
                  WHERE
                    product_name = 'S8')
    AND buyer_id NOT IN (SELECT 
                    s.buyer_id
                  FROM
                    Sales s
                  INNER JOIN 
                    Product p
                    ON s.product_id = p.product_id
                  WHERE
                    product_name = 'iPhone');


SELECT s.buyer_id
FROM Sales AS s INNER JOIN Product AS p
ON s.product_id = p.product_id
GROUP BY s.buyer_id
HAVING SUM(CASE WHEN p.product_name = 'S8' THEN 1 ELSE 0 END) > 0
AND SUM(CASE WHEN p.product_name = 'iPhone' THEN 1 ELSE 0 END) = 0;
