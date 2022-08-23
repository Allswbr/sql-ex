-- https://www.sql-ex.ru/learn_exercises.php?LN=20

Select p.maker, count(p.model) Count_Model
from Product p
where type = 'PC'
group by p.maker
having count(p.model) >= 3
