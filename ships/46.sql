-- https://www.sql-ex.ru/learn_exercises.php?LN=46

select o.ship
	, displacement
	, numGuns
from (
	select name ship
		, numGuns
		, displacement
	from Ships s
		inner join Classes c on s.class = c.class
	UNION
	select class ship
		, numGuns
		, displacement
	from Classes
) as t1
right join Outcomes o
	on o.ship = t1.ship
where battle = 'Guadalcanal'
