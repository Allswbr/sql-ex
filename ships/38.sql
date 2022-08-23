-- https://www.sql-ex.ru/learn_exercises.php?LN=38

Select distinct country
from Classes
where type = 'bb'
INTERSECT
Select distinct country
from Classes
where type = 'bc'
