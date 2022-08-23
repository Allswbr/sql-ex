-- https://www.sql-ex.ru/learn_exercises.php?LN=6

select distinct p.maker, l.speed
from Laptop l 
	inner join
	Product p on l.model = p.model
where l.hd >= 10
