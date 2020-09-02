/* Group_Concat ->returns a string with concatenated non-NULL value from a group.
                  Returns NULL when there are no non-NULL values
                  */


select sell_date, count(distinct product) as num_sold, group_concat(distinct product) as products
from activities
group by sell_date
