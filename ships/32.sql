-- https://www.sql-ex.ru/learn_exercises.php?LN=32

Select country, cast(avg(power(bore,3)/2) AS numeric(10,2)) weight
from
	(select country, bore, name
	from Classes c
		left join Ships s on c.class = s.class
union all
	select distinct country, bore, ship
	from Classes c
		left join Outcomes o on o.ship = c.class
	where ship NOT IN (select name from Ships)
	) t1
where name is not null
group by country
