/* 
* Over Clause
  * defines a window or user-specified set of rows within a query result set.
  * usable in Ranking Functions, Aggregate Functions. Analytics Functions, and Next Value For Functions
  * OVER ( [ PARTITION BY value_expression ] [ order_by_clause ] )  
* Ranking -> Rank
  * Returns the rank of each row within the partition of a result set.
  * is a temporary value
  * RANK ( ) OVER ( [ partition_by_clause ] order_by_clause )  
  * ranking after a tie will be skipped with RANK() function
* Ranking -> Dense_Rank
  * This function returns the rank of each row within a result set partition, with no gaps in the ranking values. 
  * DENSE_RANK ( ) OVER ( [ <partition_by_clause> ] < order_by_clause > )  
  * ranking after a tie will not be skipped with RANK() function
* Ranking -> NTILE
  * returns the number of the group to which the row belongs.
  * starting at one
  * NTILE (integer_expression) OVER ( [ <partition_by_clause> ] < order_by_clause > ) 
* Ranking -> Row_Number
  * returns the sequential number of a row within a partition of a result set
  * is temporary value
  * ROW_NUMBER ( ) OVER ( [ PARTITION BY value_expression , ... [ n ] ] order_by_clause ) 
*/

/* The ranking score is asking for rank with no skips. Therefore, dense_rank will be the best option for this case */
select score, dense_rank() over (order by score desc) as rank
from scores
order by rank
