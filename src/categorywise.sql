-- join relevant tables to find the catagorywise distribution of pizzas
SELECT category, COUNT(name) FROM pizza_types
GROUP BY category;