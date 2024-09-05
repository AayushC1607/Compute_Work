USE customer;

-- 1.
SELECT customer_id, COUNT(*)
FROM Orders
GROUP BY customer_id
HAVING count(*) > 5;

-- 2.
SELECT DISTINCT customer_id, order_date
FROM Orders
WHERE MONTH(order_date) = 1 AND NOT order_date = "2024-01-31";

-- 3.
-- We can optimize the Orders table by adding a another attribute as rating so the users acn get a better understanding of how good the product is