# Write your MySQL query statement below
select customer_id, count(*) as count_no_trans
from visits
where visit_id not in (select distinct visit_id from transactions)
group by customer_id;

# Left Join
SELECT
	customer_id,
	COUNT(Visits.visit_id) AS count_no_trans
FROM
	visits
LEFT JOIN Transactions
	ON Visits.visit_id = Transactions.visit_id
WHERE 
	Transactions.visit_id IS NULL
GROUP BY customer_id;

# CTE
with t as    
    (select customer_id, count(transaction_id) cnt  
    from visits
    left join transactions using(visit_id)
    group by 1, visit_id
    having count(transaction_id)=0)

select customer_id, count(cnt) count_no_trans
from t
group by 1

# Exists
select customer_id, count(*) count_no_trans 
from 
Visits 
where NOT EXISTS (
 select * from Transactions 
 where Visits.visit_id=Transactions.visit_id
 )
group by customer_id;
