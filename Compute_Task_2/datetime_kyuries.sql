USE customer;

-- 1.
SELECT CASE MONTH(order_date)
WHEN 1 THEN 'January'
WHEN 2 THEN 'February'
WHEN 3 THEN 'March'
WHEN 4 THEN 'April'
WHEN 5 THEN 'May'
WHEN 6 THEN 'June'
WHEN 7 THEN 'July'
WHEN 8 THEN 'August'
WHEN 9 THEN 'September'
WHEN 10 THEN 'October'
WHEN 11 THEN 'November'
WHEN 12 THEN 'December'
END AS MONTH, COUNT(order_id) AS order_count
FROM Orders
WHERE YEAR(order_date) = 2023
GROUP BY MONTH;

-- 2.
SELECT * FROM Orders
WHERE DAYOFWEEK(order_date) IN (1,7);