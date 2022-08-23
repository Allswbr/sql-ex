-- https://www.sql-ex.ru/learn_exercises.php?LN=5

Select  model, speed, hd
from PC
where cd in ('12x','24x') AND price < 600
