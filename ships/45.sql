-- https://www.sql-ex.ru/learn_exercises.php?LN=45

Select name
from Ships 
where name like ('% % %')
union 
Select ship name
from Outcomes
where ship like ('% % %')
