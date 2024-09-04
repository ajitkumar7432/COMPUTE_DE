# altering the order table by dropping the customer_id and product_id index unique 
ALTER TABLE `customer_order_management`.`orders` 
DROP INDEX `customer_id_UNIQUE` ,
DROP INDEX `product_id_UNIQUE` ;		
;

INSERT INTO Orders (order_id, customer_id, product_id, quantity, order_date) VALUES
(101, 503, 4, 2, '2024-01-01'),
(102, 504, 6, 3, '2024-01-02'),
(103, 501, 2, 3, '2024-01-03'),
(104, 503, 5, 4, '2024-01-04'),
(105, 502, 1, 2, '2024-01-05'),
(106, 504, 7, 1, '2024-01-06'),
(107, 501, 4, 2, '2024-01-07'),
(108, 502, 6, 3, '2024-01-08'),
(109, 503, 1, 5, '2024-01-09'),
(110, 504, 8, 4, '2024-01-10'),
(111, 502, 5, 3, '2024-01-11'),
(112, 501, 3, 1, '2024-01-12'),
(113, 503, 2, 2, '2024-01-13'),
(114, 504, 3, 3, '2024-01-14'),
(115, 502, 4, 4, '2024-01-15'),
(116, 503, 6, 2, '2024-01-16'),
(117, 504, 5, 2, '2024-01-17'),
(118, 501, 6, 3, '2024-01-18'),
(119, 502, 3, 5, '2024-01-19'),
(120, 504, 4, 1, '2024-01-20'),
(121, 503, 7, 2, '2024-01-21'),
(122, 504, 1, 2, '2024-01-22'),
(123, 501, 2, 4, '2024-01-23'),
(124, 502, 7, 3, '2024-01-24'),
(125, 503, 4, 2, '2024-01-25'),
(126, 501, 5, 2, '2024-01-26'),
(127, 504, 6, 3, '2024-01-27');

-- Query to find customers who have placed more than 5 orders
SELECT customer_id, COUNT(order_id) AS order_count
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 5;

# Inference : This query lists customers who have placed more than five orders, showing their customer IDs along with the total number of orders they've made.

-- Drop the dataset after querying
DELETE FROM Orders
WHERE customer_id IN (501, 502, 503, 504);


#2 : Write a query to find the customers who placed an order within the first 30 days of the year.

SELECT DISTINCT customer_id
FROM Orders
WHERE order_date <= (SELECT MIN(order_date) FROM Orders) + 29 ;

# Inference : This query identifies customers who placed an order within the first 30 days, listing their unique customer IDs.

#3 : Suggest how to optimize the Orders table by adding relevant indexes. Explain your choice.
CREATE INDEX idx_order_date ON Orders(order_date);
CREATE INDEX idx_customer_id ON Orders(customer_id);
CREATE INDEX idx_product_id ON Orders(product_id);

# Inference : Inference: Adding indexes on frequently queried columns (like order_date, customer_id, and product_id) speeds up query performance, particularly for large datasets.
	

