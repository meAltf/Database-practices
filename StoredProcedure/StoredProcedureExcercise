use learn;

-- 1. Create a stored procedure that returns employees in a department
DELIMITER //

CREATE PROCEDURE GetEmployeeByDept(IN dept_id INT)
BEGIN
	SELECT * FROM employees WHERE department_id = dept_id;
END //

DELIMITER ;

-- Call it
CALL GetEmployeeByDept(3);

-- 2. Create a stored procedure to insert a log entry.
DELIMITER //

CREATE PROCEDURE LogAction(IN user_id INT, IN action VARCHAR(100))
BEGIN
	INSERT INTO logs(user_id, action, log_time) VALUES (user_id, action, NOW());
END //

DELIMITER ;

-- Insert data into stored procedure
CALL LogAction(1, 'User logged in');
CALL LogAction(2, 'User changed password');
CALL LogAction(3, 'User viewed profile');
CALL LogAction(4, 'User logged out');
CALL LogAction(5, 'User updated settings');

-- Call it | Everytime you called, new entry will happen, bcz it's insert stored procedure
CALL LogAction(1, 'User logged in');
SELECT * FROM logs;

-- 3. Use a stored procedure with OUT parameter:
DELIMITER //

CREATE PROCEDURE GetTotalSalary(OUT total DECIMAL(10,2))
BEGIN
    SELECT SUM(salary) INTO total FROM employees;
END //

DELIMITER ;

-- call it
CALL GetTotalSalary(@output);
SELECT @output;



