select sum(total_price) as total_revenue from pizza_orders;

select sum(total_price)/ count(distinct order_id) as Avg_order_value from pizza_orders;

select sum(quantity) as Total_pizza_sold from pizza_orders;

select count(distinct order_id) as Total_orders from pizza_orders;

select cast(
cast(sum(quantity)as decimal(10,2)) / cast(count(distinct order_id)as decimal(10,2)
) as decimal(10,2)) as Avg_pizza_per_order
from pizza_orders;