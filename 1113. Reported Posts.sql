# Write your MySQL query statement below
select extra as report_reason, count(distinct post_id) as report_count
from actions
where action='report' and extra is not null
and action_date between '2019-07-04' and '2019-07-06'
group by report_reason
