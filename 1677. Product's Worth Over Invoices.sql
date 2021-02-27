# Write your MySQL query statement below
select name as name, sum(rest) as rest, sum(paid) as paid, sum(canceled) as canceled, sum(refunded) as refunded
from invoice
Right join product
using (product_id)
group by name
order by name

# why not using Inner Join even through get the result? because it is about "all products"
