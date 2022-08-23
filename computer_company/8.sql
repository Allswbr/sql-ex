-- https://www.sql-ex.ru/learn_exercises.php?LN=8

Select maker
from Product
where type = 'PC'
EXCEPT
Select maker
from Product
where type = 'Laptop'