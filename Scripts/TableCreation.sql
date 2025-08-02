Create database learn;

-- Create table for stored procedure -1
-- employee table
CREATE TABLE learn.employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(10,2),
    department_id INT
);

-- department table
CREATE TABLE learn.departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Add foreign key constraint in employees table
ALTER TABLE learn.employees
ADD CONSTRAINT fk_department
FOREIGN KEY (department_id) REFERENCES departments(department_id);

-- Insert dummy data
INSERT INTO learn.departments (department_id, department_name) VALUES
(1, 'Human Resources'),
(2, 'Engineering'),
(3, 'Sales'),
(4, 'Marketing'),
(5, 'Finance');

INSERT INTO learn.employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', '555-0101', '2020-05-10', 'HR01', 60000.00, 1),
('Bob', 'Smith', 'bob.smith@example.com', '555-0102', '2019-03-15', 'ENG01', 85000.00, 2),
('Charlie', 'Brown', 'charlie.brown@example.com', '555-0103', '2021-08-01', 'SAL01', 50000.00, 3),
('Diana', 'Ross', 'diana.ross@example.com', '555-0104', '2022-01-20', 'MKT01', 70000.00, 4),
('Ethan', 'Hunt', 'ethan.hunt@example.com', '555-0105', '2018-11-11', 'FIN01', 75000.00, 5);


-- Create table for store procedure -2
CREATE TABLE learn.logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    action VARCHAR(100),
    log_time DATETIME
);

CREATE TABLE learn.users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100)
);

ALTER TABLE learn.logs
ADD CONSTRAINT fk_logs_user
FOREIGN KEY (user_id) REFERENCES users(user_id);

-- Insert dummy data
INSERT INTO learn.users (username, email) VALUES
('alice', 'alice@example.com'),
('bob', 'bob@example.com'),
('charlie', 'charlie@example.com'),
('diana', 'diana@example.com'),
('ethan', 'ethan@example.com');

-- for salary
CREATE TABLE salary (
    salary_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    base_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    pay_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO salary (employee_id, base_salary, bonus, pay_date) VALUES
(1, 60000.00, 3000.00, '2025-01-31'),
(2, 85000.00, 5000.00, '2025-01-31'),
(3, 50000.00, 2000.00, '2025-01-31'),
(4, 70000.00, 2500.00, '2025-01-31'),
(5, 75000.00, 3500.00, '2025-01-31');


