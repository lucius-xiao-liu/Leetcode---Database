delete from person where id not in
(select min(id) from (select * from person) person group by email)
