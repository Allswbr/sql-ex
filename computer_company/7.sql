-- https://www.sql-ex.ru/learn_exercises.php?LN=7

Select  p.model, price
from Product p
	inner join Laptop l on l.model = p.model
where p.maker = 'B'
union
Select  p.model, price
from Product p
	inner join PC pc on pc.model = p.model
where p.maker = 'B'
union
Select  p.model, price
from Product p
	inner join Printer pr on pr.model = p.model
where p.maker = 'B'
