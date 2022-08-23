-- https://www.sql-ex.ru/learn_exercises.php?LN=17

Select distinct 'Laptop', model, speed
from Laptop
where speed < all (select speed
			from PC)
