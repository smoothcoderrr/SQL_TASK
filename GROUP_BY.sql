use internship;
show tables;
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  order_date DATE,
  quantity INT,
  price DECIMAL(10,2));
  
INSERT INTO orders (order_id, customer_id, product_id, order_date, quantity, price)
VALUES 
(1021, 101, 7711, '2023-07-01', 2, 50),
(1022, 101, 7712, '2023-07-02', 1, 100),
(1023, 102, 7711, '2023-07-01', 1, 50),
(1024, 103, 7713, '2023-07-01', 5, 20),
(1025, 104, 7712, '2023-07-02', 2, 100),
(1026, 101, 7711, '2023-07-03', 3, 50);

## GROUP BY

## 1.Calculate the total quantity of products sold for each product_id					
select product_id, sum(quantity) as total_quantity from orders 
group by product_id;

## 2.Calculate the total revenue for each customer						
select customer_id, sum(quantity * price) as total_revenue from orders 
group by customer_id;

## 3.Get the maximum quantity ordered in a single order for each product						
select product_id, max(quantity) as max_quantity from orders
group by product_id having max(quantity) order by max(quantity) desc;

## 4.Get the number of orders placed by each customer						
select customer_id, count(customer_id) as num_orders from orders
group by customer_id;

## 5.Calculate the total revenue for each day						
select order_date, sum(quantity * price) as total_revenue from orders
group by order_date;

## 6.Calculate the total revenue for each product each day						
select product_id, order_date, sum(quantity * price)as total_revenue from orders
group by product_id, order_date;
