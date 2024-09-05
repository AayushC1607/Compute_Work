USE customer;

-- 1.
SELECT p.product_name, SUM(o.quantity) AS quantity
from Orders o
JOIN Product p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY quantity desc
LIMIT 3;

-- 2.
SELECT p.product_id, p.product_name, SUM(o.quantity * p.price) AS revenue
FROM Orders o
JOIN Product p on o.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

-- 3.
SELECT p.product_id, p.product_name
FROM Product p
LEFT JOIN Orders o ON o.product_id = p.product_id
WHERE o.product_id is NULL;