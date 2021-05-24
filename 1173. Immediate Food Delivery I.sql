# Write your MySQL query statement below
select round(100*
    (select count(*) from delivery where order_Date = customer_pref_delivery_date)
    /
    (select count(*) from delivery)
    ,2) as immediate_percentage
