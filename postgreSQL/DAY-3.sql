SELECT staff_id, SUM(amount), DATE(payment_date), COUNT(*) FROM payment  GROUP BY staff_id, payment_date ORDER BY SUM(amount) DESC LIMIT 2;

SELECT DATE(payment_date), staff_id, SUM(amount), COUNT(*) FROM payment GROUP BY payment_date, staff_id ORDER BY SUM(amount) DESC LIMIT 3;

SELECT DATE(payment_date), staff_id, SUM(amount), COUNT(*) FROM payment GROUP BY DATE(payment_date), staff_id ORDER BY SUM(amount) DESC LIMIT 3;

SELECT staff_id, DATE(payment_date), SUM(amount), COUNT(*) FROM payment WHERE amount != 0 GROUP BY staff_id, DATE(payment_date) ORDER BY SUM(amount) DESC LIMIT 3;

SELECT staff_id, DATE(payment_date), SUM(amount), COUNT(*) FROM payment WHERE amount != 0 GROUP BY staff_id, DATE(payment_date) ORDER BY SUM(amount) DESC LIMIT 3;

SELECT staff_id, DATE(payment_date), SUM(amount), COUNT(*) FROM payment GROUP BY staff_id, DATE(payment_date) ORDER BY SUM(amount) DESC LIMIT 3;

SELECT staff_id, DATE(payment_date), SUM(amount), COUNT(*) FROM payment GROUP BY staff_id, DATE(payment_date);

SELECT staff_id, DATE(payment_date), SUM(amount), COUNT(*) FROM payment GROUP BY staff_id, DATE(payment_date) ORDER BY SUM(amount) DESC LIMIT 3;

SELECT staff_id, DATE(payment_date), SUM(amount), COUNT(*) FROM payment WHERE amount != 0 GROUP BY staff_id, DATE(payment_date) ORDER BY COUNT(*) DESC LIMIT 3;

---HAVING -used to filter Groupings BY aggregations
--- HAVING an only used with GROUP BY!
SELECT staff_id, DATE(payment_date), SUM(amount), COUNT(*) FROM payment WHERE amount != 0 GROUP BY staff_id, DATE(payment_date) HAVING COUNT(*) > 400 ORDER BY COUNT(*) DESC LIMIT 3;

SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id HAVING SUM(amount) > 200;

---challenge question
SELECT *, DATE(payment_date) FROM payment;

SELECT customer_id, DATE(payment_date), ROUND(AVG(amount), 2) AS avg_amount, COUNT(*) FROM payment 
WHERE DATE(payment_date) IN ('2020-04-28', '2020-04-29', '2020-04-30') 
GROUP BY customer_id, DATE(payment_date)
HAVING COUNT(*) > 1
ORDER BY 3 DESC;