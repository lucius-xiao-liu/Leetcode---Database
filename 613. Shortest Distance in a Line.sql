# Cross Join
# Write your MySQL query statement below
select min(abs(p1.x-p2.x)) as shortest
from point p1
cross join point p2
where p1.x<>p2.x;


# Inner Join
SELECT
    MIN(ABS(p1.x - p2.x)) AS shortest
FROM
    point p1
        JOIN
    point p2 ON p1.x != p2.x
;
