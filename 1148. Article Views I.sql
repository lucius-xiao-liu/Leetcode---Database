# Write your MySQL query statement below
select author_id as id
from views
where author_id=viewer_id
group by id
order by id
