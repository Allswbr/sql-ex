-- https://www.sql-ex.ru/learn_exercises.php?LN=24

with all_type as (
	select model, price
	from PC
	UNION
	select model, price
	from Laptop
	UNION
	select model, price
	from Printer
)
select model
from all_type
where price = (select max(price) from all_type)
