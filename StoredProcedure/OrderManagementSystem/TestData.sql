USE order_management;

-- Insert customers
INSERT INTO customers(name, email) VALUES ('Alice', 'alice@example.com'), ('Bob', 'bob@example.com');

-- Insert products
INSERT INTO products(name, price, stock) VALUES 
('Laptop', 60000, 10), 
('Mouse', 500, 50);