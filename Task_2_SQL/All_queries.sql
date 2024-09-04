CREATE DATABASE customer_order_management;
USE customer_order_management; ;

CREATE TABLE `customer_order_management`.`orders` (
  `order_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  `order_date` DATE NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE INDEX `product_id_UNIQUE` (`product_id` ASC) VISIBLE,
  UNIQUE INDEX `order_id_UNIQUE` (`order_id` ASC) VISIBLE,
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE);
CREATE TABLE `customer_order_management`.`products` (
  `product_id` INT NOT NULL,
  `product_name` VARCHAR(45) NOT NULL,
  `price` DECIMAL NOT NULL,
  PRIMARY KEY (`product_id`));

SELECT product_id, SUM(quantity) AS total_quantity
FROM Orders
GROUP BY product_id;

INSERT INTO Products (product_id, product_name, price) VALUES
(1, 'Laptop', 799.99),
(2, 'Smartphone', 499.99),
(3, 'Tablet', 299.99),
(4, 'Headphones', 99.99),
(5, 'Smartwatch', 199.99),
(6, 'Camera', 599.99),
(7, 'Printer', 150.00),
(8, 'Monitor', 250.00),
(9, 'Keyboard', 49.99),
(10, 'Mouse', 29.99),
(11, 'Gaming Console', 399.99),
(12, 'External Hard Drive', 89.99),
(13, 'Flash Drive', 19.99),
(14, 'Router', 79.99),
(15, 'TV', 699.99),
(16, 'Soundbar', 149.99),
(17, 'Home Theater', 299.99),
(18, 'Projector', 499.99),
(19, 'Smart Bulb', 39.99),
(20, 'Drone', 999.99),
(21, 'Action Camera', 199.99),
(22, 'VR Headset', 349.99),
(23, 'Smart Doorbell', 129.99),
(24, 'Wi-Fi Extender', 59.99),
(25, 'Security Camera', 199.99),
(26, 'Fitness Tracker', 99.99),
(27, 'Bluetooth Speaker', 49.99),
(28, 'Power Bank', 29.99),
(29, 'Phone Case', 19.99),
(30, 'Screen Protector', 9.99),
(31, 'Smart Thermostat', 249.99),
(32, 'Robot Vacuum', 399.99),
(33, 'Coffee Maker', 99.99),
(34, 'Blender', 59.99),
(35, 'Toaster', 29.99),
(36, 'Microwave Oven', 149.99),
(37, 'Air Purifier', 199.99),
(38, 'Electric Kettle', 39.99),
(39, 'Hair Dryer', 49.99),
(40, 'Electric Toothbrush', 79.99),
(41, 'Water Bottle', 14.99),
(42, 'Lunch Box', 19.99),
(43, 'Notebook', 4.99),
(44, 'Pen', 1.99),
(45, 'Backpack', 49.99),
(46, 'Sunglasses', 99.99),
(47, 'Watch', 149.99),
(48, 'Bicycle', 249.99),
(49, 'Treadmill', 599.99),
(50, 'Dumbbells', 29.99),
(51, 'Yoga Mat', 19.99),
(52, 'Resistance Bands', 14.99),
(53, 'Running Shoes', 89.99),
(54, 'T-shirt', 14.99),
(55, 'Jeans', 49.99),
(56, 'Jacket', 99.99),
(57, 'Sneakers', 69.99),
(58, 'Hiking Boots', 129.99),
(59, 'Socks', 9.99),
(60, 'Hat', 19.99),
(61, 'Gloves', 14.99),
(62, 'Scarf', 24.99),
(63, 'Umbrella', 9.99),
(64, 'Wallet', 29.99),
(65, 'Belt', 19.99),
(66, 'Suitcase', 129.99),
(67, 'Camera Lens', 399.99),
(68, 'Tripod', 79.99),
(69, 'Memory Card', 24.99),
(70, 'Lens Cleaner', 9.99),
(71, 'Photo Frame', 19.99),
(72, 'Tablet Cover', 29.99),
(73, 'Laptop Bag', 49.99),
(74, 'Gaming Chair', 199.99),
(75, 'Desk', 149.99),
(76, 'Chair', 99.99),
(77, 'Bookshelf', 129.99),
(78, 'Office Lamp', 39.99),
(79, 'Wall Clock', 24.99),
(80, 'Desk Organizer', 19.99),
(81, 'Cable Organizer', 9.99),
(82, 'Stapler', 4.99),
(83, 'Paper Clips', 1.99),
(84, 'Tape Dispenser', 9.99),
(85, 'Envelopes', 5.99),
(86, 'Sticky Notes', 3.99),
(87, 'Highlighter', 1.99),
(88, 'Marker', 2.99),
(89, 'Scissors', 7.99),
(90, 'Glue Stick', 0.99),
(91, 'Calculator', 12.99),
(92, 'Pencil Case', 8.99),
(93, 'Binder', 6.99),
(94, 'Clipboard', 4.99),
(95, 'Push Pins', 2.99),
(96, 'Magnets', 3.99),
(97, 'Desk Fan', 19.99),
(98, 'Air Conditioner', 299.99),
(99, 'Heater', 99.99),
(100, 'Fan', 49.99);



INSERT INTO Orders (order_id, customer_id, product_id, quantity, order_date) VALUES
(1, 101, 1, 2, '2023-08-01'),
(2, 102, 2, 1, '2023-08-02'),
(3, 103, 3, 5, '2023-08-03'),
(4, 104, 4, 3, '2023-08-04'),
(5, 105, 5, 1, '2023-08-05'),
(6, 106, 6, 2, '2023-08-06'),
(7, 107, 7, 4, '2023-08-07'),
(8, 108, 8, 1, '2023-08-08'),
(9, 109, 9, 3, '2023-08-09'),
(10, 110, 10, 2, '2023-08-10'),
(11, 111, 11, 1, '2023-08-11'),
(12, 112, 12, 4, '2023-08-12'),
(13, 113, 13, 3, '2023-08-13'),
(14, 114, 14, 2, '2023-08-14'),
(15, 115, 15, 1, '2023-08-15'),
(16, 116, 16, 5, '2023-08-16'),
(17, 117, 17, 4, '2023-08-17'),
(18, 118, 18, 3, '2023-08-18'),
(19, 119, 19, 2, '2023-08-19'),
(20, 120, 20, 1, '2023-08-20'),
(21, 121, 21, 3, '2023-08-21'),
(22, 122, 22, 2, '2023-08-22'),
(23, 123, 23, 1, '2023-08-23'),
(24, 124, 24, 4, '2023-08-24'),
(25, 125, 25, 5, '2023-08-25'),
(26, 126, 26, 3, '2023-08-26'),
(27, 127, 27, 2, '2023-08-27'),
(28, 128, 28, 1, '2023-08-28'),
(29, 129, 29, 4, '2023-08-29'),
(30, 130, 30, 3, '2023-08-30'),
(31, 131, 31, 2, '2023-08-31'),
(32, 132, 32, 1, '2023-09-01'),
(33, 133, 33, 5, '2023-09-02'),
(34, 134, 34, 4, '2023-09-03'),
(35, 135, 35, 3, '2023-09-04'),
(36, 136, 36, 2, '2023-09-05'),
(37, 137, 37, 1, '2023-09-06'),
(38, 138, 38, 3, '2023-09-07'),
(39, 139, 39, 4, '2023-09-08'),
(40, 140, 40, 2, '2023-09-09'),
(41, 141, 41, 1, '2023-09-10'),
(42, 142, 42, 5, '2023-09-11'),
(43, 143, 43, 4, '2023-09-12'),
(44, 144, 44, 3, '2023-09-13'),
(45, 145, 45, 2, '2023-09-14'),
(46, 146, 46, 1, '2023-09-15'),
(47, 147, 47, 4, '2023-09-16'),
(48, 148, 48, 3, '2023-09-17'),
(49, 149, 49, 2, '2023-09-18'),
(50, 150, 50, 1, '2023-09-19'),
(51, 151, 51, 3, '2023-09-20'),
(52, 152, 52, 2, '2023-09-21'),
(53, 153, 53, 1, '2023-09-22'),
(54, 154, 54, 4, '2023-09-23'),
(55, 155, 55, 5, '2023-09-24'),
(56, 156, 56, 3, '2023-09-25'),
(57, 157, 57, 2, '2023-09-26'),
(58, 158, 58, 1, '2023-09-27'),
(59, 159, 59, 4, '2023-09-28'),
(60, 160, 60, 3, '2023-09-29'),
(61, 161, 61, 2, '2023-09-30'),
(62, 162, 62, 1, '2023-10-01'),
(63, 163, 63, 5, '2023-10-02'),
(64, 164, 64, 4, '2023-10-03'),
(65, 165, 65, 3, '2023-10-04'),
(66, 166, 66, 2, '2023-10-05'),
(67, 167, 67, 1, '2023-10-06'),
(68, 168, 68, 3, '2023-10-07'),
(69, 169, 69, 4, '2023-10-08'),
(70, 170, 70, 2, '2023-10-09'),
(71, 171, 71, 1, '2023-10-10'),
(72, 172, 72, 5, '2023-10-11'),
(73, 173, 73, 4, '2023-10-12'),
(74, 174, 74, 3, '2023-10-13'),
(75, 175, 75, 2, '2023-10-14'),
(76, 176, 76, 1, '2023-10-15'),
(77, 177, 77, 4, '2023-10-16'),
(78, 178, 78, 3, '2023-10-17'),
(79, 179, 79, 2, '2023-10-18'),
(80, 180, 80, 1, '2023-10-19'),
(81, 181, 81, 3, '2023-10-20'),
(82, 182, 82, 2, '2023-10-21'),
(83, 183, 83, 1, '2023-10-22'),
(84, 184, 84, 4, '2023-10-23'),
(85, 185, 85, 5, '2023-10-24'),
(86, 186, 86, 3, '2023-10-25'),
(87, 187, 87, 2, '2023-10-26'),
(88, 188, 88, 1, '2023-10-27'),
(89, 189, 89, 4, '2023-10-28'),
(90, 190, 90, 3, '2023-10-29'),
(91, 191, 91, 2, '2023-10-30'),
(92, 192, 92, 1, '2023-10-31'),
(93, 193, 93, 5, '2023-11-01'),
(94, 194, 94, 4, '2023-11-02'),
(95, 195, 95, 3, '2023-11-03'),
(96, 196, 96, 2, '2023-11-04'),
(97, 197, 97, 1, '2023-11-05'),
(98, 198, 98, 3, '2023-11-06'),
(99, 199, 99, 4, '2023-11-07'),
(100, 200, 100, 2, '2023-11-08');


#  BASIC QUERIES

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


# INTERMEDIATE QUERIES


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


#  DATE AND TIME QUERIES

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


# CUSTOMER - FOCUSED QUERIES


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
	

