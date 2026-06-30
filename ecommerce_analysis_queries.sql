CREATE DATABASE ecommerce_dashboard;
USE ecommerce_dashboard;
SELECT COUNT(*) FROM sql_restaurant.superstore;
SELECT * FROM sql_restaurant.superstore LIMIT 5;
SELECT SUM(Sales) 
FROM sql_restaurant.superstore;
SELECT 
ROUND(SUM(Sales),2) AS total_sales,
ROUND(SUM(Profit),2) AS total_profit
FROM sql_restaurant.superstore;
SELECT COUNT(DISTINCT `Order ID`) AS total_orders
FROM sql_restaurant.superstore;
SELECT Region,
ROUND(SUM(Sales),2) AS total_sales
FROM sql_restaurant.superstore
GROUP BY Region
ORDER BY total_sales DESC;
SELECT `Customer Name`,
ROUND(SUM(Sales),2) AS revenue
FROM sql_restaurant.superstore
GROUP BY `Customer Name`
ORDER BY revenue DESC
LIMIT 10;
SELECT Segment,
ROUND(SUM(Sales),2) AS total_sales
FROM sql_restaurant.superstore
GROUP BY Segment
ORDER BY total_sales DESC;
SELECT Category,
ROUND(SUM(Sales),2) AS sales,
ROUND(SUM(Profit),2) AS profit
FROM sql_restaurant.superstore
GROUP BY Category;
SELECT State,
ROUND(SUM(Sales),2) AS total_sales
FROM sql_restaurant.superstore
GROUP BY State
ORDER BY total_sales DESC
LIMIT 10;
SELECT `Product Name`,
ROUND(SUM(Profit),2) AS total_profit
FROM sql_restaurant.superstore
GROUP BY `Product Name`
HAVING total_profit < 0
ORDER BY total_profit;SELECT Discount,
ROUND(AVG(Profit),2) AS avg_profit
FROM sql_restaurant.superstore
GROUP BY Discount
ORDER BY Discount;
SELECT AVG(`Delivery Days`)
FROM sql_restaurant.superstore;