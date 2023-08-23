-- extract top 10 grossing movies in terms of rental money
select film.title film_name, sum(payment.amount) total_rental_amount
from payment
join rental on payment.rental_id = rental.rental_id
join inventory on inventory.inventory_id = rental.inventory_id
join film on film.film_id = inventory.film_id
group by 1
order by 2 desc
limit 10;