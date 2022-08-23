-- https://www.sql-ex.ru/learn_exercises.php?LN=28

select count(t1.maker)
from(
	Select maker
	FROM Product
	group by maker
	having count(model) = 1
	) t1
