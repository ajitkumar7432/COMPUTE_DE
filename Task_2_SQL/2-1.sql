
#1: Write a query to retrieve the total quantity of each product ordered.

SELECT product_id, SUM(quantity) AS total_quantity
FROM Orders
GROUP BY product_id;

#Inference: This query shows the total quantity ordered for each product, helping to identify the most demanded products.

#2 : Write a query to list all orders placed in the last 7 days.
SELECT *
FROM Orders
WHERE order_date >= (
    SELECT MAX(order_date) 
    FROM Orders
) - 7;

#Inference: This query retrieves all orders placed within the last 7 days by comparing the order dates with the most recent order date in the database.

#3 : Write a query to find the total sales amount for each order by multiplying the quantity by the product price.

SELECT o.order_id, o.quantity * p.price AS total_sales_amount
FROM Orders o
JOIN Products p ON o.product_id = p.product_id;

#Inference : This query retrieves the total sales amount for each order by multiplying the quantity of the product by its price for each item in the order.

