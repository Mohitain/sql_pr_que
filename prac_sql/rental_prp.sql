
select * 
from customer c
where exists (
				select 1 
				from payment p 
				where c.customer_id = p.customer_id)
select * 
from film f 
where exists (
				select 1
				from inventory i 
				where f.film_id = i.film_id )

select * from film_actor a
where exists (
				select 1 
				from film f
				where a.film_id = f.film_id)

select * 
from customer c
where not exists (
				select 1 
				from payment p
				where c.customer_id = p.customer_id)

select * 
from film f
where not exists (
				select 1
				from inventory i 
				where f.film_id = i.film_id )

select * 
from customer c
where exists (
			select 1
			from payment p 
			where c.customer_id = p.customer_id 
			and p.amount > 10 )

select * 
from customer c
where exists (
				select 1 
				from payment p 
				where c.customer_id = p.customer_id 
)
and not exists (
					select 1
					from payment p 
					where p.customer_id = c.customer_id 
					and p.amount < 10
)

select * from payment;
select * from category

Calculate the absolute difference in total revenue between Action and Comedy films.

select abs(
			sum(case when c.name = 'Action' then p.amount else 0 end)-
			sum(case when c.name = 'Comedy' then p.amount else 0 end)
)
from category c
join film_category fc 
		on c.category_id = fc.category_id
join film f  
		on fc.film_id = f.film_id
join inventory i 
		on f.film_id = i.film_id
join rental r
		on i.inventory_id = r.inventory_id
join payment p
		 on r.rental_id = p.rental_id


select abs(
			avg(case when rating = 'PG' then length else 0 end)-
			avg(case when rating = 'R' then length else 0 end)
) 
from film

select r.customer_id ,count(*) rental_count
from rental r
group by r.customer_id
having count(*)>(select avg(rental_count)
					from (select r.customer_id,count(r.*) rental_count
							from rental r
							group by r.customer_id))


select distinct(customer_id) from 
rental

select avg(rental_count)
from (
		select customer_id,count(*) rental_count 
		from rental
		group by customer_id
)t;

select customer_id ,count(*)
from rental
group by customer_id 
having count(*)>(
select avg(rental_count)
from (
	select customer_id ,count(*) as rental_count
	from rental
	group by customer_id)t)

