select queries.id, queries.year, ifnull(npv, 0) as npv
from queries 
left join NPV 
on queries.id = NPV.id and Queries.year = NPV.year;
