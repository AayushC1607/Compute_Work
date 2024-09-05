CREATE DATABASE Customer;

USE Customer;

CREATE TABLE Product (
	product_id INT PRIMARY KEY NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    price NUMERIC(10,2) NOT NULL
);

CREATE TABLE Orders (
	order_id INT PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT DEFAULT 0,
    Order_date DATETIME NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

INSERT INTO Product
(product_id, product_name, price)
VALUES
(1, 'Phone', 699.99),
(2, 'Laptop', 1199.99),
(3, 'Tablet', 499.99),
(4, 'Headphones', 149.99),
(5, 'Smartwatch', 249.99),
(6, 'Gaming Console', 399.99),
(7, 'Smart TV', 999.99),
(8, 'Bluetooth Speaker', 99.99),
(9, 'Wireless Earbuds', 129.99),
(10, 'External Hard Drive', 89.99),
(11, 'Fitness Tracker', 199.99),
(12, 'E-Reader', 129.99),
(13, 'Portable Charger', 39.99),
(14, 'Smart Home Hub', 149.99),
(15, 'Digital Camera', 599.99);

SELECT * FROM Product;

INSERT INTO Orders
(order_id, customer_id, product_id, quantity, order_date)
VALUES
(1, 101, 1, 2, '2024-01-05'),
(2, 102, 2, 1, '2024-01-06'),
(3, 103, 3, 1, '2024-01-07'),
(4, 104, 4, 3, '2024-01-08'),
(5, 105, 5, 1, '2024-01-09'),
(6, 106, 6, 2, '2024-01-10'),
(7, 107, 7, 1, '2024-01-11'),
(8, 108, 8, 2, '2024-01-12'),
(9, 109, 9, 4, '2024-01-13'),
(10, 110, 10, 1, '2024-01-14'),
(11, 111, 11, 3, '2024-01-15'),
(12, 112, 12, 2, '2024-01-16'),
(13, 113, 13, 1, '2024-01-17'),
(14, 114, 14, 2, '2024-01-18'),
(15, 115, 15, 1, '2024-01-19'),
(16, 116, 1, 1, '2024-01-20'),
(17, 117, 2, 2, '2024-01-21'),
(18, 118, 3, 1, '2024-01-22'),
(19, 119, 4, 1, '2024-01-23'),
(20, 120, 5, 3, '2024-01-24'),
(21, 121, 6, 2, '2024-01-25'),
(22, 122, 7, 1, '2024-01-26'),
(23, 123, 8, 2, '2024-01-27'),
(24, 124, 9, 1, '2024-01-28'),
(25, 125, 10, 2, '2024-01-29'),
(26, 126, 11, 1, '2024-01-30'),
(27, 127, 12, 3, '2024-01-31'),
(28, 128, 13, 1, '2024-02-01'),
(29, 129, 14, 2, '2024-02-02'),
(30, 130, 15, 1, '2024-02-03'),
(31, 131, 1, 2, '2024-02-04'),
(32, 132, 2, 1, '2024-02-05'),
(33, 133, 3, 3, '2024-02-06'),
(34, 134, 4, 1, '2024-02-07'),
(35, 135, 5, 2, '2024-02-08'),
(36, 136, 6, 2, '2024-02-09'),
(37, 137, 7, 1, '2024-02-10'),
(38, 138, 8, 4, '2024-02-11'),
(39, 139, 9, 2, '2024-02-12'),
(40, 140, 10, 1, '2024-02-13'),
(41, 141, 11, 1, '2024-02-14'),
(42, 142, 12, 3, '2024-02-15'),
(43, 143, 13, 2, '2024-02-16'),
(44, 144, 14, 1, '2024-02-17'),
(45, 145, 15, 2, '2024-02-18'),
(46, 146, 1, 1, '2024-02-19'),
(47, 147, 2, 3, '2024-02-20'),
(48, 148, 3, 1, '2024-02-21'),
(49, 149, 4, 1, '2024-02-22'),
(50, 150, 5, 2, '2024-02-23'),
(51, 151, 6, 2, '2024-02-24'),
(52, 152, 7, 1, '2024-02-25'),
(53, 153, 8, 1, '2024-02-26'),
(54, 154, 9, 2, '2024-02-27'),
(55, 155, 10, 1, '2024-02-28'),
(56, 156, 11, 3, '2024-03-01'),
(57, 157, 12, 2, '2024-03-02'),
(58, 158, 13, 1, '2024-03-03'),
(59, 159, 14, 1, '2024-03-04'),
(60, 160, 15, 2, '2024-03-05'),
(61, 161, 1, 2, '2024-03-06'),
(62, 162, 2, 1, '2024-03-07'),
(63, 163, 3, 2, '2024-03-08'),
(64, 164, 4, 1, '2024-03-09'),
(65, 165, 5, 3, '2024-03-10'),
(66, 166, 6, 2, '2024-03-11'),
(67, 167, 7, 1, '2024-03-12'),
(68, 168, 8, 2, '2024-03-13'),
(69, 169, 9, 1, '2024-03-14'),
(70, 170, 10, 2, '2024-03-15'),
(71, 171, 11, 1, '2024-03-16'),
(72, 172, 12, 3, '2024-03-17'),
(73, 173, 13, 1, '2024-03-18'),
(74, 174, 14, 2, '2024-03-19'),
(75, 175, 15, 1, '2024-03-20'),
(76, 101, 1, 2, '2024-03-21'),
(77, 102, 2, 1, '2024-03-22'),
(78, 103, 3, 1, '2024-03-23'),
(79, 104, 4, 3, '2024-03-24'),
(80, 105, 5, 1, '2024-03-25'),
(81, 106, 6, 2, '2024-03-26'),
(82, 107, 7, 1, '2024-03-27'),
(83, 108, 8, 2, '2024-03-28'),
(84, 109, 9, 4, '2024-03-29'),
(85, 110, 10, 1, '2024-03-30'),
(86, 111, 11, 3, '2024-03-31'),
(87, 112, 12, 2, '2024-04-01'),
(88, 113, 13, 1, '2024-04-02'),
(89, 114, 14, 2, '2024-04-03'),
(90, 115, 15, 1, '2024-04-04'),
(91, 116, 1, 1, '2024-04-05'),
(92, 117, 2, 2, '2024-04-06'),
(93, 118, 3, 1, '2024-04-07'),
(94, 119, 4, 1, '2024-04-08'),
(95, 120, 5, 3, '2024-04-09'),
(96, 121, 6, 2, '2024-04-10'),
(97, 122, 7, 1, '2024-04-11'),
(98, 123, 8, 2, '2024-04-12'),
(99, 124, 9, 1, '2024-04-13'),
(100, 125, 10, 2, '2024-04-14');
