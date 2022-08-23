-- https://www.sql-ex.ru/learn_exercises.php?LN=39

with complex as
(
	Select o.ship, b.date, o.result
	from Outcomes o
	inner join Battles b on o.battle = b.name
)
select distinct ship
	from complex t1
where ship in (select ship from complex t2
		where t1.result = 'damaged'
		AND t2.date > t1.date)
