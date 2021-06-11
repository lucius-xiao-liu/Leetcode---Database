# Write your MySQL query statement below
select round(ifnull(count(distinct session_id)/count(distinct user_id),0),2) as average_sessions_per_user
from activity
where activity_date between '2019-06-28' and '2019-07-27'


# date_sub()
select round(ifnull(count(distinct session_id)/count(distinct user_id),0),2) as average_sessions_per_user
from activity
where activity_date between date_sub('2019-07-27',interval 29 day) and '2019-07-27'
