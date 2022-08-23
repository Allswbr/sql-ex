-- https://www.sql-ex.ru/learn_exercises.php?LN=9

Select distinct p.maker
from Product p
	inner join
	PC pc on pc.model = p.model
where speed >= 450
