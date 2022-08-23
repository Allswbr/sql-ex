-- https://www.sql-ex.ru/learn_exercises.php?LN=13

Select avg(speed)
from PC pc
	inner join Product pr on pc.model = pr.model
where pr.maker = 'A'
