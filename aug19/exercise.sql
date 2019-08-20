 SELECT country.country AS country, category.name AS category, COUNT(rental.rental_id) AS rentals 
 FROM category
 JOIN film_category ON category.category_id = film_category.category_id
 JOIN film ON film_category.film_id = film.film_id
 JOIN inventory ON film.film_id = inventory.film_id
 JOIN rental ON inventory.inventory_id = rental.inventory_id
 JOIN customer ON rental.customer_id = customer.customer_id
 JOIN address ON customer.address_id = address.address_id
 JOIN city ON address.city_id = city.city_id
 JOIN country ON city.country_id = country.country_id
 GROUP BY country, category
 WITH ROLLUP
 ORDER BY country, category;
 
 SELECT COUNT(rental_id) FROM rental;