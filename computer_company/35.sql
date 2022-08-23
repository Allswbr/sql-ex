-- https://www.sql-ex.ru/learn_exercises.php?LN=35

Select model, type
from Product
where model not like('%[^0-9]%') or lower(model) not like('%[^a-z]%')
