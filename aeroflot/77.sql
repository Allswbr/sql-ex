/*https://sql-ex.ru/learn_exercises.php?LN=77*/

with q as
(
select count( distinct t.trip_no) trip_count
	, date
from trip t
	inner join
	pass_in_trip ps on ps.trip_no = t.trip_no
where town_from = 'Rostov'
group by date
)
select trip_count
	, date
from q
where trip_count = (select max(trip_count) from q)