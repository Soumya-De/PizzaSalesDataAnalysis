select * from pizza_orders;

SELECT DAYNAME(order_date) AS day_name,
COUNT(DISTINCT order_id) AS total_orders
FROM pizza_orders
GROUP BY DAYOFWEEK(order_date), day_name
ORDER BY DAYOFWEEK(order_date);

SELECT MONTHNAME(order_date) AS month_name,
COUNT(DISTINCT order_id) AS total_orders
FROM pizza_orders
GROUP BY MONTH(order_date), month_name
ORDER BY MONTH(order_date);

SELECT pi.pizza_category,
ROUND((SUM(po.total_price) / (SELECT SUM(total_price) FROM pizza_orders)) * 100,2) 
AS percentage_of_sales
FROM pizza_orders po
JOIN pizza_prices pp ON po.pizza_name_id = pp.pizza_name_id
JOIN pizza_info pi ON pp.pizza_name = pi.pizza_name
GROUP BY pi.pizza_category;




