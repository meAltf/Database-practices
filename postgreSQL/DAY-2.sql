SELECT COUNT(*) FROM payment WHERE amount = 0;

SELECT first_name, last_name FROM customer WHERE first_name = 'ADAM';

---coding exercise----
SELECT * FROM payment WHERE customer_id=100;
SELECT COUNT(customer_id) FROM payment WHERE customer_id = 100;
SELECT first_name, last_name FROM customer WHERE first_name = 'ERICA';

SELECT payment_id, customer_id, amount FROM payment WHERE amount >=10.99 ORDER BY amount DESC;
SELECT payment_id, customer_id FROM payment WHERE amount <>10.99 ORDER BY amount DESC LIMIT 3;
SELECT payment_id, customer_id FROM payment WHERE amount !=10.99 ORDER BY amount DESC LIMIT 3;

SELECT first_name, last_name FROM  customer WHERE first_name is null;
SELECT first_name, last_name FROM  customer WHERE first_name is not null;

---coding exercise----
SELECT COUNT(rental_id) FROM rental WHERE return_date is null;
SELECT payment_id, amount FROM  payment WHERE amount <= 2 ORDER BY amount DESC;

SELECT * FROM payment WHERE (customer_id = 30 OR customer_id = 31) AND amount = 2.99;
SELECT * FROM payment WHERE (amount = 10.99 OR amount = 9.99) AND customer_id  426;


----challenge question-----
SELECT * FROM payment WHERE (customer_id = 322 OR customer_id = 346 OR customer_id = 354) 
AND (amount < 2 OR amount > 10) ORDER BY customer_id ASC, amount DESC;

SELECT payment_id, payment_date, amount FROM payment WHERE amount BETWEEN 1.99 AND 6.99;
SELECT payment_id, payment_date, amount FROM payment WHERE amount NOT BETWEEN 1.99 AND 6.99;


SELECT * FROM rental WHERE rental_date BETWEEN '2005-05-24' AND '2005-05-26' ORDER BY rental_date DESC;

---challenge question----
SELECT COUNT(payment_id) FROM payment WHERE amount BETWEEN 1.99 AND 3.99
AND payment_date BETWEEN '2020-01-26' AND '2020-01-27 23:59';

SELECT * FROM customer WHERE customer_id IN (123,212,323,243,353,432); 

----------challenge question ------------
SELECT * FROM payment;
SELECT * FROM payment WHERE customer_id IN (12,25,67,93,124,234) AND amount IN (4.99, 7.99, 9.99) 
AND payment_date BETWEEN '2020-01-01' AND '2020-01-31 23:59';


----- LIKE - case sensitive -------
----- ILIKE is a case-INsensitive ----
----first_name start with A
SELECT * FROM actor WHERE first_name LIKE 'A%';
SELECT * FROM actor WHERE first_name ILIKE 'a%';

-----find a first_name where just 'A' is present , anywhere of the name---
SELECT * FROM actor WHERE first_name LIKE '%A%';
SELECT * FROM actor WHERE first_name NOT LIKE '%A%';

------find first_name where first character should be anything but second character must be 'A'--
SELECT * FROM actor where first_name LIKE '_A%';

SELECT * FROM film;
SELECT * FROM film WHERE title LIKE '_C%';
SELECT * FROM film WHERE description LIKE '%Drama%' AND title LIKE 'T%';


---challenge question---
SELECT COUNT(film_id) FROM film WHERE description LIKE '%Documentary%';
SELECT first_name , last_name FROM customer;
SELECT COUNT(first_name) FROM customer WHERE first_name LIKE '___' AND (last_name LIKE '%X' OR last_name LIKE '%Y');

---Aliases----
SELECT payment_id AS invoice_no, amount FROM payment;
SELECT title AS title_of_movie, description AS description_of_movie, release_year FROM film WHERE description LIKE
'%Documentary%';
SELECT COUNT(*) AS number_of_movie FROM film;


----day-2 -challenges 
SELECT COUNT(*) AS no_of_movies FROM film WHERE description LIKE '%Saga%' AND (title LIKE 'A%' OR title LIKE '%R'); 

SELECT * FROM customer;
SELECT * FROM customer WHERE first_name LIKE '%ER%' AND first_name LIKE '_A%' ORDER BY last_name DESC;

SELECT * FROM payment;
SELECT COUNT(*) AS total_payment_count FROM payment WHERE (amount = 0 OR amount BETWEEN 3.99 AND 7.99) AND 
payment_date BETWEEN '2020-05-01' AND '2020-05-02';








