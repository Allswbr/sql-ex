-- https://www.sql-ex.ru/learn_exercises.php?LN=10

Select model, price
from Printer
where price = (select max(price)
		from Printer)
