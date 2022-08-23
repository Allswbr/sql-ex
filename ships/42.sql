-- https://www.sql-ex.ru/learn_exercises.php?LN=42

Select o.ship
	, o.battle
from Outcomes o
where o.result = 'sunk'
