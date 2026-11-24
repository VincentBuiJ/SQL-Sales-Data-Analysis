
-- =========================================
-- PROJECT: SALES DATA ANALYSIS
-- TOOL: SQLite
-- =========================================


-- 1. CREATE SALES TABLE

CREATE TABLE sales (
    sale_id INTEGER,
    product TEXT,
    category TEXT,
    quantity INTEGER,
    price REAL,
    sale_date TEXT
);


-- 2. INSERT SALES DATA

INSERT INTO sales
(sale_id, product, category, quantity, price, sale_date)
VALUES
(1, 'Laptop', 'Electronics', 2, 800, '2026-01-05'),
(2, 'Mouse', 'Electronics', 5, 25, '2026-01-06'),
(3, 'Desk', 'Furniture', 3, 200, '2026-01-07'),
(4, 'Chair', 'Furniture', 4, 100, '2026-01-08'),
(5, 'Keyboard', 'Electronics', 3, 50, '2026-01-09'),
(6, 'Monitor', 'Electronics', 2, 250, '2026-01-10'),
(7, 'Desk', 'Furniture', 2, 200, '2026-01-11'),
(8, 'Mouse', 'Electronics', 10, 25, '2026-01-12'),
(9, 'Chair', 'Furniture', 2, 100, '2026-01-13'),
(10, 'Laptop', 'Electronics', 1, 800, '2026-01-14');


-- 3. VIEW ALL SALES RECORDS

SELECT *
FROM sales;


-- 4. COUNT TOTAL SALES RECORDS

SELECT COUNT(*) AS total_records
FROM sales;


-- 5. CALCULATE TOTAL REVENUE

SELECT SUM(quantity * price) AS total_revenue
FROM sales;


-- 6. REVENUE BY CATEGORY

SELECT
    category,
    SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;


-- 7. UNITS SOLD BY PRODUCT

SELECT
    product,
    SUM(quantity) AS units_sold
FROM sales
GROUP BY product
ORDER BY units_sold DESC;


-- 8. REVENUE BY PRODUCT

SELECT
    product,
    SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;


-- 9. DAILY REVENUE

SELECT
    sale_date,
    SUM(quantity * price) AS daily_revenue
FROM sales
GROUP BY sale_date
ORDER BY sale_date;


-- 10. AVERAGE PRODUCT PRICE

SELECT AVG(price) AS average_price
FROM sales;


-- 11. HIGHEST PRODUCT PRICE

SELECT MAX(price) AS highest_price
FROM sales;


-- 12. LOWEST PRODUCT PRICE

SELECT MIN(price) AS lowest_price
FROM sales;


-- 13. FILTER ELECTRONICS SALES

SELECT *
FROM sales
WHERE category = 'Electronics';


-- 14. SORT SALES BY PRICE

SELECT *
FROM sales
ORDER BY price DESC;


-- 15. COUNT SALES BY CATEGORY

SELECT
    category,
    COUNT(*) AS total_sales
FROM sales
GROUP BY category;


-- 16. ELECTRONICS REVENUE

SELECT SUM(quantity * price) AS electronics_revenue
FROM sales
WHERE category = 'Electronics';


-- 17. FURNITURE REVENUE

SELECT SUM(quantity * price) AS furniture_revenue
FROM sales
WHERE category = 'Furniture';


-- 18. SEARCH PRODUCTS STARTING WITH L

SELECT *
FROM sales
WHERE product LIKE 'L%';


-- 19. SEARCH PRODUCTS CONTAINING O

SELECT *
FROM sales
WHERE product LIKE '%o%';


-- 20. DISPLAY UNIQUE PRODUCTS

SELECT DISTINCT product
FROM sales;


-- 21. DISPLAY FIRST 3 RECORDS

SELECT *
FROM sales
LIMIT 3;


-- 22. TOP 3 PRODUCTS BY REVENUE

SELECT
    product,
    SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 3;


-- 23. UNITS SOLD BY CATEGORY

SELECT
    category,
    SUM(quantity) AS units_sold
FROM sales
GROUP BY category
ORDER BY units_sold DESC;
