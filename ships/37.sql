-- https://www.sql-ex.ru/learn_exercises.php?LN=37

select c.class
from Classes c
left join (select class, name
		from Ships
	UNION
		select c.class, o.ship
		from Classes c
			inner join Outcomes o on o.ship = c.class
) t1
on c.class = t1.class
group by c.class
having count(t1.name) = 1
