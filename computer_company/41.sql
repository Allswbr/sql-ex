-- https://www.sql-ex.ru/learn_exercises.php?LN=41

with t1 as (
	select model, price
		from PC
	UNION
	select model, price
		from Laptop
	UNION
	select model, price
		from Printer
)
select p.maker
	, 	case
			when count(price) = count(*) then max(price) 
		end price
FROM Product p
	INNER JOIN t1 on t1.model = p.model
group by p.maker
