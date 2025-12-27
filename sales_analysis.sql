CREATE DATABASE sales_db;
USE sales_db;
CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(30),
    region VARCHAR(20),
    quantity INT,
    unit_price INT,
    payment_mode VARCHAR(10),
    revenue INT
);
INSERT INTO sales VALUES
(1001,'2023-01-05','Rahul Sharma','Laptop','Electronics','West',1,55000,'Card',55000),
(1002,'2023-01-07','Anita Verma','Headphones','Electronics','North',2,2000,'UPI',4000),
(1003,'2023-02-10','Amit Patel','Office Chair','Furniture','South',1,8500,'Cash',8500),
(1004,'2023-02-15','Neha Singh','Smartphone','Electronics','East',1,30000,'Card',30000),
(1005,'2023-03-01','Ravi Kumar','Desk','Furniture','West',2,6000,'UPI',12000),
(1006,'2023-03-12','Priya Mehta','Tablet','Electronics','South',1,20000,'Card',20000),
(1007,'2023-04-05','Suresh Iyer','Printer','Electronics','North',1,12000,'Cash',12000),
(1008,'2023-04-18','Kiran Rao','Office Chair','Furniture','East',1,8500,'UPI',8500),
(1009,'2023-05-02','Manoj Joshi','Monitor','Electronics','West',2,9000,'Card',18000),
(1010,'2023-05-15','Pooja Nair','Desk Lamp','Accessories','South',3,1500,'UPI',4500);

SELECT SUM(revenue) AS total_revenue
FROM sales;
SELECT COUNT(order_id) AS total_orders
FROM sales;
SELECT AVG(revenue) AS avg_order_value
FROM sales;
SELECT 
    MONTH(order_date) AS month,
    SUM(revenue) AS monthly_revenue
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;
SELECT 
    product,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;
SELECT 
    category,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY category;
SELECT 
    region,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY region;
SELECT 
    product,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 3;
SELECT 
    payment_mode,
    COUNT(order_id) AS total_orders,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY payment_mode;

