SELECT * FROM payment;

-- INNER JOIN - common fields from both table

-- SELECT * FROM TableA INNER JOIN TableB ON TableA.employee = TableB.employee
-- SELECT * FROM TableA AS A INNER JOIN TabelB AS B ON A.employee = B.employee
-- If we want only selected column then the query will be
-- SELECT A.employee FROM TableA AS A INNER JOIN TableB AS B ON A.employee= B.employee

-- If we want one column is not present in different table so we can use like that
-- SELECT A.employee, sales FROM TableA AS A INNER JOIN TableB AS B ON A.employee = B.employee

-- Order of Tables(A and B / B and A) does not matter
-- Repeated values in either table will also be repeated

SELECT * FROM payment;
SELECT * FROM customer;

SELECT * FROM payment 
INNER JOIN customer 
ON payment.customer_id = customer.customer_id;

--I want all column from payment table and first & last name from customer table
SELECT payment.*, customer.first_name, customer.last_name 
FROM payment 
INNER JOIN customer 
ON payment.customer_id = customer.customer_id;

SELECT pa.*, cu.first_name, cu.last_name 
FROM payment AS pa 
INNER JOIN customer AS cu 
ON pa.customer_id = cu.customer_id;

-- If column in only present in only one table so don't need to add tableName like cu.first_name , we can use directly first_name
SELECT pa.*, first_name, last_name 
FROM payment AS pa 
INNER JOIN customer AS cu 
ON pa.customer_id = cu.customer_id;

SELECT payment_id, pa.customer_id, amount, first_name, last_name
FROM payment AS pa
INNER JOIN customer AS cu
ON pa.customer_id = cu.customer_id;

--second example
SELECT * FROM payment AS pa
INNER JOIN staff AS sf
ON sf.staff_id = pa.staff_id;

-- only required fields
SELECT pa.*, first_name, last_name, email
FROM payment as pa
INNER JOIN staff AS sf
ON pa.staff_id = sf.staff_id;

-- filtering the data
SELECT pa.*, first_name, last_name, email
FROM payment as pa
INNER JOIN staff AS sf
ON pa.staff_id = sf.staff_id
WHERE sf.staff_id = 1;


-- FULL OUTER JOIN - All fields from both the tables
-- SELECT * FROM TableA FULL OUTER JOIN TableB ON TableA.employee = TableB.employee 


















