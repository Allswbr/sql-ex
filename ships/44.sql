-- https://www.sql-ex.ru/learn_exercises.php?LN=44

Select name
from Ships 
where name like ('R%')
union 
Select ship name
from Outcomes
where ship like ('R%')
