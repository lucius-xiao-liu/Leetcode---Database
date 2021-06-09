# Write your MySQL query statement below
select parent as post_id,ifnull(count(distinct sub_id),0) as number_of_comments
from (select sub_id as parent from submissions where parent_id is null) p
left join (select sub_id,parent_id from submissions where parent_id is not null) c
on p.parent=c.parent_id
group by parent


