-- https://www.sql-ex.ru/learn_exercises.php?LN=14

Select s.class, s.name, c.country
from Classes c
	inner join Ships s on c.class = s.class
where numGuns >= 10
