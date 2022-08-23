-- https://www.sql-ex.ru/learn_exercises.php?LN=25

with min_ram as 
(
	select MIN(ram) as ram
	from PC
)
SELECT p.maker
FROM Product p
WHERE type = 'Printer'
	INTERSECT
SELECT p.maker
FROM Product p
	inner join PC pc on pc.model = p.model
WHERE pc.ram = (select ram from min_ram)
	AND pc.speed = (select MAX(speed)
			FROM PC
			WHERE ram = (select ram from min_ram)
			)
