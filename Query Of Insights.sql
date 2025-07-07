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

SELECT pp.pizza_size,
ROUND((SUM(po.total_price) / (SELECT SUM(total_price) FROM pizza_orders)) * 100,2) 
AS percentage_of_sales
FROM pizza_orders po
JOIN pizza_prices pp ON po.pizza_name_id = pp.pizza_name_id
GROUP BY pp.pizza_size;

SELECT pi.pizza_category,
sum(po.quantity) 
AS total_sold
FROM pizza_orders po
JOIN pizza_prices pp ON po.pizza_name_id = pp.pizza_name_id
JOIN pizza_info pi ON pp.pizza_name = pi.pizza_name
GROUP BY pi.pizza_category;

SELECT pp.pizza_name,
round(sum(po.total_price),2)
AS total_revenue
FROM pizza_orders po
JOIN pizza_prices pp ON po.pizza_name_id = pp.pizza_name_id
GROUP BY pp.pizza_name
order by total_revenue desc limit 5;

SELECT pp.pizza_name,
round(sum(po.total_price),2)
AS total_revenue
FROM pizza_orders po
JOIN pizza_prices pp ON po.pizza_name_id = pp.pizza_name_id
GROUP BY pp.pizza_name
order by total_revenue limit 5;

SELECT pp.pizza_name,
(sum(po.quantity)
AS total_quantity
FROM pizza_orders po
JOIN pizza_prices pp ON po.pizza_name_id = pp.pizza_name_id
GROUP BY pp.pizza_name
order by total_quantity desc limit 5;

SELECT pp.pizza_name,
(sum(po.quantity)
AS total_quantity
FROM pizza_orders po
JOIN pizza_prices pp ON po.pizza_name_id = pp.pizza_name_id
GROUP BY pp.pizza_name
order by total_quantity limit 5;

SELECT pp.pizza_name,
sum(distinct po.order_id)
AS total_orders
FROM pizza_orders po
JOIN pizza_prices pp ON po.pizza_name_id = pp.pizza_name_id
GROUP BY pp.pizza_name
order by total_orders desc limit 5;

SELECT pp.pizza_name,
sum(distinct po.order_id)
AS total_orders
FROM pizza_orders po
JOIN pizza_prices pp ON po.pizza_name_id = pp.pizza_name_id
GROUP BY pp.pizza_name
order by total_orders limit 5;