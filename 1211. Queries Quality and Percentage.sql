select query_name, round(avg(rating/position),2) quality,
round(count(case when rating<3 then 1 end)/count(query_name)*100,2) poor_query_percentage
from queries
group by query_name;
