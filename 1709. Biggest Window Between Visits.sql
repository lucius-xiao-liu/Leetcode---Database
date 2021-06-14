select user_id, max(abs(datediff(visit_date1,visit_date2))) as biggest_window
from(select user_id,
visit_date as visit_date1,
ifnull(lead(visit_date) over (partition by user_id order by visit_date), '2021-1-1') as visit_date2
from uservisits) tb
group by user_id
