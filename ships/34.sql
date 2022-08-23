-- https://www.sql-ex.ru/learn_exercises.php?LN=34

Select name
from Ships s
inner join Classes c on s.class = c.class
where displacement > 35000
	AND launched >= 1922
	AND type = 'bb'
