-- https://sql-ex.com/learn_exercises.php?LN=90

with t1 as (select top 3 model
		from Product
		order by model),
t2 as (
select top 3 model
		from Product
		order by model desc)
select maker, model, type
from Product
where model not in (select model
			from t1
		union
			select model
			from t2)