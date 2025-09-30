CREATE TABLE IF NOT EXISTS online_sales1 (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO online_sales (order_id, order_date, amount, product_id)
VALUES
(1, '2023-01-15', 100, 101),
(2, '2023-01-20', 200, 102),
(3, '2023-02-05', 150, 103),
(4, '2023-02-18', 300, 101),
(5, '2023-03-10', 250, 102);

SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_count
FROM online_sales1
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
