-- question 1
select count(last_name)
from actor 
where last_name = 'Wahlberg'

--question 2, was the database edited?
select count(amount) 
from payment
where amount >= '3.99' and amount <= '5.99'

--question 3
select store_id, film_id, count(film_id)
from inventory
group by store_id, film_id 
order by count(film_id) desc

--question 4
select count(last_name)
from customer 
where last_name = 'William'

--question 5
select staff_id, count(rental_id)
from rental
group by staff_id
order by count(rental_id) desc

--question 6 did you mean from the customer table?
select count(distinct last_name) 
from customer 

--question 7
select film_id, count (actor_id) 
from film_actor 
group by film_id 
order by count ( actor_id) desc

--question 8
select store_id, count(last_name) 
from customer 
where last_name like '%es'
group by store_id

--question 9
select sum(amount), customer_id 
from payment
where customer_id >='380' and customer_id <='430'
group by customer_id 
having sum(amount) > 250 

--question 10
select rating, count(title)
from film
group by rating






