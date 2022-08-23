-- https://www.sql-ex.ru/learn_exercises.php?LN=47

with t1 as (
select c.country, s.name name from classes c join ships s on c.class=s.class
union
select c.country, o.ship name from outcomes o join classes c on c.class=o.ship
),
t2 as (
select country
	, name
	, case
		when result = 'sunk' THEN 1
		ELSE 0
	end sunk
from t1
	left join Outcomes o on o.ship = t1.name
)
select country
from t2
group by country
having count(distinct name) = sum(sunk)
