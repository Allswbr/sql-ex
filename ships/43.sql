-- https://www.sql-ex.ru/learn_exercises.php?LN=43

with years as (select distinct launched
		from Ships
		where launched is not null
		)
select name
from Battles
where year(date) not in (select launched from years)
