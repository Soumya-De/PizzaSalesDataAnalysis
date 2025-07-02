CREATE TABLE FactPizzaSales (
    pizza_id INT PRIMARY KEY,
    order_id int,
    pizza_name_id varchar(100),
    quantity int,
    order_date date,
    order_time TIME,
    unit_price double,
    total_price double
);
 
insert into factpizzasales(
pizza_id,
order_id,
pizza_name_id,
quantity,order_date,
order_time,
unit_price,
total_price
)
SELECT 
    pizza_id,
    order_id,
    pizza_name_id,
    quantity,
    STR_TO_DATE(order_date, '%d-%m-%Y') AS order_date,
    order_time,
    unit_price,
    total_price
    from raw;
    
    
SELECT * FROM factpizzasales;


CREATE TABLE Pizza_Info (
    pizza_name VARCHAR(100) PRIMARY KEY,
    pizza_category VARCHAR(50),
    pizza_ingredients VARCHAR(200)
);

insert into Pizza_Info(
pizza_name,
pizza_category,
pizza_ingredients
)
SELECT DISTINCT pizza_name, pizza_category, pizza_ingredients FROM raw;

SELECT * FROM Pizza_Info;


CREATE TABLE Pizza_Prices (
    pizza_name_id VARCHAR(50) PRIMARY KEY,
    pizza_name VARCHAR(50),
    pizza_size VARCHAR(10),
    unit_price DOUBLE,
    FOREIGN KEY (pizza_name)
        REFERENCES Pizza_Info (pizza_name)
);

insert into Pizza_Prices(pizza_name_id,pizza_name,pizza_size,unit_price)
SELECT DISTINCT pizza_name_id,pizza_name, pizza_size,unit_price FROM raw;

SELECT * FROM Pizza_Prices;

ALTER TABLE FactPizzaSales
ADD CONSTRAINT fk_pizza_name_id
FOREIGN KEY (pizza_name_id)
REFERENCES Pizza_Prices(pizza_name_id);

ALTER TABLE FactPizzaSales
RENAME TO Pizza_Orders;





