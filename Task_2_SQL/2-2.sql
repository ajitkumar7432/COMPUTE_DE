#1 : Write a query to find the top 3 best-selling products by total quantity.

SELECT product_id, SUM(quantity) AS total_quantity
FROM Orders
GROUP BY product_id
ORDER BY total_quantity DESC
LIMIT 3;

#Inference : This query identifies the top 3 products with the highest total quantities ordered by summing up the quantities and sorting them in descending order.


#2 : Write a query to find the total revenue generated by each product.
SELECT p.product_name, SUM(o.quantity * p.price) AS total_revenue
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY p.product_name;

# Inference: This query calculates the total revenue generated by each product by multiplying the quantity ordered by the product price and then grouping the results by product name.

#3 :  Write a query to list the products that have never been ordered.
SELECT p.product_name
FROM Products p
LEFT JOIN Orders o ON p.product_id = o.product_id
WHERE o.product_id IS NULL;

#Inference : This query retrieves the names of products that have never been ordered by checking for products with no matching entries in the Orders table.
