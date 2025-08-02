USE order_management;

DELIMITER //

CREATE PROCEDURE GetCustomerOrders(IN p_customer_id INT)
BEGIN
    SELECT o.id AS order_id, o.order_date, p.name AS product, oi.quantity, oi.price
    FROM orders o
    JOIN order_items oi ON o.id = oi.order_id
    JOIN products p ON p.id = oi.product_id
    WHERE o.customer_id = p_customer_id;
END //

DELIMITER ;

-- CALL GetCustomerOrders(1);