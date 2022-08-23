-- https://www.sql-ex.ru/learn_exercises.php?LN=26

select avg(price) AVG_price
from(
Select model, price
from PC
union ALL
select model, price
from Laptop) t1
inner join Product on t1.model = Product.model
where maker = 'A'
