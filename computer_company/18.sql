-- https://www.sql-ex.ru/learn_exercises.php?LN=18

Select distinct p.maker, pr.price
from Product p
	inner join Printer pr on p.model = pr.model
where color ='y' and pr.price = (select min(price)
					from Printer
					where color = 'y')
