-- challenge question-1
SELECT * FROM seats;
SELECT DISTINCT fare_conditions FROM seats;
SELECT * FROM boarding_passes;

SELECT st.fare_conditions, COUNT(*)
FROM seats AS st
INNER JOIN boarding_passes as bp
ON st.seat_no = bp.seat_no
GROUP BY st.fare_conditions
ORDER BY COUNT(*) DESC;


-- FULL OUTER JOIN - All columns from both the tables
SELECT * FROM tickets;
SELECT * FROM boarding_passes;

SELECT * FROM boarding_passes bp
FULL OUTER JOIN tickets t
ON bp.ticket_no = t.ticket_no;

-- challenge
-- find the tickets that don't have a boarding pass related to it!
SELECT t.ticket_no, bp.boarding_no 
FROM boarding_passes bp
FULL OUTER JOIN tickets t
ON bp.ticket_no = t.ticket_no
WHERE boarding_no IS NULL;

-- find the tickets that don't have a ticket_no related to boarding_pass [ that doesn't support to happen]
SELECT t.ticket_no, bp.boarding_no 
FROM boarding_passes bp
FULL OUTER JOIN tickets t
ON bp.ticket_no = t.ticket_no
WHERE t.ticket_no is NULL;





