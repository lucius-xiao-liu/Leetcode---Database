with temp as (
    select machine_id, 
    process_id, 
    sum(case when activity_type = 'end' then timestamp end)-sum(case when activity_type = 'start' then timestamp end) durations
    from Activity
    group by machine_id, process_id)
select machine_id, round(avg(durations),3) as processing_time
from temp
group by 1
