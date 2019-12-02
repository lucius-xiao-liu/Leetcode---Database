/*
* Order By Clause
  * ORDER BY order_by_expression  
    [ COLLATE collation_name ]   
    [ ASC | DESC ]   
    [ ,...n ]   
[ <offset_fetch> ]  
  
<offset_fetch> ::=  
{   
    OFFSET { integer_constant | offset_row_count_expression } { ROW | ROWS }  
    [  
      FETCH { FIRST | NEXT } {integer_constant | fetch_row_count_expression } { ROW | ROWS } ONLY  
    ]  
} 
*/

Create FUNCTION getNthHighestSalary(@N INT) returns INT as 
BEGIN
  Return(
  Select Salary
  From Employee
  Gourp By Salary
  Order By Salary DESC
  Offset @N-1 rows
  Fetch First 1 Rows Only
  );
  End
