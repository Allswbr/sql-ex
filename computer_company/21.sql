-- https://www.sql-ex.ru/learn_exercises.php?LN=21

Select p.maker, max(pc.price)
from Product p
	inner join PC pc on p.model = pc.model
group by p.maker
