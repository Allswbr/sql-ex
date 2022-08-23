-- https://www.sql-ex.ru/learn_exercises.php?LN=40

Select maker, min(type)
from Product
group by maker
having count(distinct type) = 1 and count(model) > 1
