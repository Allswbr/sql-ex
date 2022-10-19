/*https://sql-ex.ru/learn_exercises.php?LN=89*/

/*First solution*/
with search as
(
    select maker
        , count(model) qty
    from product
    group by maker
)
select maker
    , qty
from search
where qty = (select max(qty) from search)
    or qty = (select min(qty) from search)

/*Second solution*/
with search as
(
select maker
        , count(model) over(partition by maker) qty
from product
)
select distinct maker
    , qty
from search
where qty = (select max(qty) from search)
    or qty = (select min(qty) from search)

/*Third solution*/
with search as
(
select maker
        , count(model) over(partition by maker) qty
from product
)
select distinct maker
    , qty
from search
where qty in (select max(qty)  from search
                union
                select min(qty) from search)
