-- https://www.sql-ex.ru/learn_exercises.php?LN=23

Select distinct pr.maker
from Product pr
	inner join PC pc on pc.model = pr.model
where pc.speed >= 750 and pr.maker in (select distinct pr.maker
					from Laptop l
				inner join Product pr on pr.model = l.model
		where l.speed >= 750)
