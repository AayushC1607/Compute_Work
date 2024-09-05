USE customer;

-- 1.
SELECT p.product_name, count(o.quantity)
FROM Orders o
JOIN Product p on o.product_id = p.product_id
GROUP BY p.product_name;

-- 2.
SELECT p.product_name, o.order_id, o.quantity, o.order_date
FROM Product p
JOIN Orders o ON p.product_id = o.product_id
WHERE o.order_date >= date_sub(curdate(), INTERVAL 7 DAY);

-- 3.
SELECT o.order_id, SUM(o.quantity * p.price) AS sales
FROM Orders o
JOIN Product p on o.product_id = p.product_id
GROUP BY o.order_id;