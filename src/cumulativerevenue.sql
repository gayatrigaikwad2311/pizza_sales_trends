 -- Analyze the cumulative revenu generated over time
SELECT order_date,
SUM(revenue) OVER ( ORDER BY order_date) as cum_revenue
FROM 
(SELECT orders.order_date,
SUM(order_details.quantity * pizzas.price) AS revenue
FROM order_details join pizzas
ON order_details.pizza_id = pizzas.pizza_id
JOIN orders
ON orders.order_id = order_details.order_id
group by orders.order_date) as sales;
