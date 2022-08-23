-- https://www.sql-ex.ru/learn_exercises.php?LN=29

select case
	when i.point is not null Then i.point
	else o.point
	end point,
	case
	when i.date is not null Then i.date
	else o.date
	end date,
	inc, out
from Income_o i
	full join Outcome_o o on i.point = o.point and i.date = o.date
