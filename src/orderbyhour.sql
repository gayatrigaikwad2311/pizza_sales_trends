-- Determine the distributions of orders by hour of the day
SELECT 
    HOUR(order_time) AS hours, COUNT(order_id) AS order_count
FROM
    orders
GROUP BY (order_time);