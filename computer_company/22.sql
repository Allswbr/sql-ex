-- https://www.sql-ex.ru/learn_exercises.php?LN=22

Select speed, avg(price)
from PC
where speed > 600
group by speed
