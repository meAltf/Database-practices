use learn;

-- 1. Conditions in Stored Procedures (IF, CASE)
DELIMITER //

CREATE PROCEDURE CheckSalary(IN emp_id INT)
BEGIN
    DECLARE emp_salary DECIMAL(10,2);

    SELECT salary INTO emp_salary FROM employees WHERE id = emp_id;

    IF emp_salary > 50000 THEN
        SELECT 'High Salary';
    ELSE
        SELECT 'Average/Low Salary';
    END IF;
END //

DELIMITER ;

-- call it
CALL CheckSalary(4);

-- 2. Using CASE statement
DELIMITER //

CREATE PROCEDURE GradeScore(IN score INT)
BEGIN
    CASE
        WHEN score >= 90 THEN SELECT 'A';
        WHEN score >= 80 THEN SELECT 'B';
        WHEN score >= 70 THEN SELECT 'C';
        ELSE SELECT 'Fail';
    END CASE;
END //

DELIMITER ;

-- call it
CALL GradeScore(85);

-- 3. Loops in Stored Procedures | LOOP, WHILE, and REPEAT
DELIMITER //

CREATE PROCEDURE CountToFive()
BEGIN
    DECLARE counter INT DEFAULT 1;

    WHILE counter <= 5 DO
        SELECT CONCAT('Counter: ', counter);
        SET counter = counter + 1;
    END WHILE;
END //

DELIMITER ;


-- call it
CALL CountToFive();

-- Using LOOP
DELIMITER //

CREATE PROCEDURE SimpleLoop()
BEGIN
    DECLARE i INT DEFAULT 1;

    my_loop: LOOP
        IF i > 5 THEN
            LEAVE my_loop;
        END IF;
        SELECT CONCAT('Looping: ', i);
        SET i = i + 1;
    END LOOP;
END //

DELIMITER ;

-- Using LEAVE
DELIMITER //

CREATE PROCEDURE SimpleLoop()
BEGIN
    DECLARE i INT DEFAULT 1;

    my_loop: LOOP
        IF i > 5 THEN
            LEAVE my_loop;
        END IF;
        SELECT CONCAT('Looping: ', i);
        SET i = i + 1;
    END LOOP;
END //

DELIMITER ;


-- 4. Error Handling in Stored Procedures
-- Use DECLARE ... HANDLER to catch errors like invalid queries or duplicate keys.

DELIMITER //

CREATE PROCEDURE InsertUser(IN user_id INT, IN username VARCHAR(50))
BEGIN
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        SELECT 'Something went wrong (maybe duplicate entry).';
    END;

    INSERT INTO users(id, name) VALUES (user_id, username);
END //

DELIMITER ;

-- Use CONTINUE to allow the procedure to go on after the error, or EXIT to stop it.




