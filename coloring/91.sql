-- https://sql-ex.com/learn_exercises.php?LN=91

select cast(sum(t1.summa)/count(t1.summa) as numeric(12,2)) avg_paint
from (select  cast(sum(case
			when b.B_VOL is NULL 
			then 0
			else b.B_VOL end) as float)
			summa
	from utQ q left join utB b on q.Q_ID = b.B_Q_ID
	group by q.Q_ID
	) t1