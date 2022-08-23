-- https://www.sql-ex.ru/learn_exercises.php?LN=16

select distinct p.model, c.model, p.speed, p.ram
from PC p, PC c
where p.speed = c.speed AND p.ram = c.ram AND p.model > c.model
