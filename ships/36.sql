-- https://www.sql-ex.ru/learn_exercises.php?LN=36

select distinct isnull(s.name, o.ship) name
from Ships s
	full join Outcomes o on s.name = o.ship
where isnull(s.name, o.ship) in (select distinct class from Classes)
