-- https://www.sql-ex.ru/learn_exercises.php?LN=27

Select maker, avg(hd) Avg_hd
from PC pc
inner join Product pr on pc.model = pr.model 
where maker IN (select maker
			from Product
			WHERE type = 'Printer')
group by maker
