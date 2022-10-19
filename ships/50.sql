/*https://sql-ex.ru/learn_exercises.php?LN=50*/

/*First solution*/
with name as (
select name
from Ships s
where class = 'Kongo'
/*корабли класса Kongo from Ships*/
)
select distinct battle
from Outcomes o
	inner join
	name n on n.name = o.ship

/*Second solution without join*/
with names as (
select name
from Ships s
where class = 'Kongo'
/*корабли класса Kongo from Ships*/
)
select distinct battle
from Outcomes
where ship in (select name from names)