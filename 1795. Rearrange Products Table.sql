-- mySQL solution
SELECT product_id, 'store1' store, store1 price 
FROM Products
where store1 is not null
union
SELECT product_id, 'store2' store, store2 price 
FROM Products
where store2 is not null
union
SELECT product_id, 'store3' store, store3 price 
FROM Products
where store3 is not null;

/* since mySQL doesn't have unpivot operator, needs to be remodifying the table before union */

--MSSQL solution

SELECT product_id,store,price
FROM Products
UNPIVOT
(
	price
	FOR store in (store1,store2,store3)
) AS StorePivot;
