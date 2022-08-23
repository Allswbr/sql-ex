-- https://www.sql-ex.ru/learn_exercises.php?LN=30

select
 isnull(i.point, o.point) point
  , isnull(i.date, o.date) date
  , sum(o.out) outcome
  , sum(i.inc) income
from income i
	full join outcome o
    	on i.point=o.point and i.date=o.date and i.code=o.code
group by isnull(i.point, o.point), isnull(i.date, o.date)
