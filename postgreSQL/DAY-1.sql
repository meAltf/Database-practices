SELECT * FROM address;

SELECT first_name, last_name, email FROM customer;

SELECT first_name, last_name FROM actor ORDER BY first_name DESC;
SELECT first_name, last_name FROM actor ORDER BY last_name ASC;
SELECT first_name, last_name FROM actor ORDER BY first_name DESC, last_name;

SELECT * FROM payment ORDER BY customer_id, amount DESC;

SELECT first_name, last_name, email FROM customer ORDER BY last_name DESC, first_name DESC;
SELECT first_name, last_name, email FROM customer ORDER BY 2 DESC, 1 DESC;

SELECT DISTINCT rating FROM film;
SELECT DISTINCT rating, rental_duration FROM film;

SELECT DISTINCT amount FROM payment ORDER BY amount DESC;

SELECT DISTINCT * FROM rental ORDER BY rental_date DESC LIMIT 100;
SELECT DISTINCT rental_id, rental_date FROM rental ORDER BY rental_date DESC LIMIT 100;

SELECT COUNT(*) FROM customer;
SELECT COUNT(first_name) FROM customer;
SELECT COUNT(DISTINCT first_name) FROM customer;

--challege day-1 ---
SELECT DISTINCT district FROM address;
SELECT rental_date FROM rental ORDER BY rental_date ASC LIMIT 1;
SELECT COUNT(film_id) FROM film;
SELECT COUNT(DISTINCT last_name) FROM customer;


	





