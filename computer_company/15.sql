-- https://www.sql-ex.ru/learn_exercises.php?LN=15

Select hd
from PC
group by hd
having count(hd) >= 2
