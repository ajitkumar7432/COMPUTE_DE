#1 : 

SELECT MONTH(order_date) AS month, COUNT(*) AS order_count
FROM Orders
WHERE YEAR(order_date) = 2023
GROUP BY MONTH(order_date);

# Inference : This query counts the number of orders placed each month in 2023, grouping the results by month to show the order count for each.

#2 : Write a query to find all orders placed on weekends (Saturday and Sunday).
SELECT *
FROM Orders
WHERE DAYOFWEEK(order_date) IN (1, 7);

#Inference : This query retrieves all orders that were placed on weekends, specifically on Sundays (1) and Saturdays (7).
