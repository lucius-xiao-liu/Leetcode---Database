/* Group_Concat ->returns a string with concatenated non-NULL value from a group.
                  Returns NULL when there are no non-NULL values
                  */


select sell_date, count(distinct product) as num_sold, group_concat(distinct product) as products
from activities
group by sell_date


/* String_AGG-> SQL Server
STRING_AGG ( expression, separator ) [ <order_clause> ]

<order_clause> ::=   
    WITHIN GROUP ( ORDER BY <order_by_expression_list> [ ASC | DESC ] ) 
*/

select t.sell_date, count(*) as num_sold, string_agg(product,',') as products
from (select distinct * from activities) as t
group by t.sell_date
order by t.sell_date
