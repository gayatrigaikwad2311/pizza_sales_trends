-- Determine the top 3 most ordered pizza types based on the revenue
SELECT pizza_types.name,
SUM(order_details.quantity * pizzas.price) AS revenue
from pizza_types join pizzas
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
group by pizza_types.name order by revenue desc limit 3;