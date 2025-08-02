USE order_management;

DELIMITER //

CREATE PROCEDURE PlaceOrder(
    IN p_customer_id INT,
    IN p_product_id INT,
    IN p_quantity INT
)
BEGIN
    DECLARE product_price DECIMAL(10,2);
    DECLARE stock_left INT;
    DECLARE order_id INT;

    -- Get product details
    SELECT price, stock INTO product_price, stock_left FROM products WHERE id = p_product_id;

    -- Check stock | Error Handler
    IF stock_left < p_quantity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Not enough stock';
    END IF;

    -- Insert into orders
    INSERT INTO orders(customer_id) VALUES (p_customer_id);
    SET order_id = LAST_INSERT_ID();

    -- Insert into order_items
    INSERT INTO order_items(order_id, product_id, quantity, price)
    VALUES (order_id, p_product_id, p_quantity, product_price * p_quantity);

    -- Update stock
    UPDATE products SET stock = stock - p_quantity WHERE id = p_product_id;

    -- Log action
    INSERT INTO logs(message) VALUES (
        CONCAT('Order placed: Customer ', p_customer_id, ', Product ', p_product_id, ', Quantity ', p_quantity)
    );

END //

DELIMITER ;

-- CALL PlaceOrder(1, 2, 3);
