-- https://www.sql-ex.ru/learn_exercises.php?LN=19

Select p.maker, avg(screen)
from Product p
	inner join Laptop l on l.model = p.model
group by p.maker
