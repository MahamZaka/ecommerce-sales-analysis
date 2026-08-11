-- E-Commerce Sales & Profitability Analysis
-- Database: ecommerce_sales
-- Table: public.sales


-- 1. Check total number of records
SELECT COUNT(*) AS total_records
FROM public.sales;


-- 2. Overall sales performance
SELECT
    ROUND(SUM(sales)::numeric, 2) AS total_revenue,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers
FROM public.sales;


-- 3. Average Order Value
SELECT
    ROUND(
        SUM(sales)::numeric / COUNT(DISTINCT order_id),
        2
    ) AS average_order_value
FROM public.sales;


-- 4. Revenue and profit by category
SELECT
    category,
    ROUND(SUM(sales)::numeric, 2) AS revenue,
    ROUND(SUM(profit)::numeric, 2) AS profit
FROM public.sales
GROUP BY category
ORDER BY revenue DESC;


-- 5. Revenue and profit by region
SELECT
    region,
    ROUND(SUM(sales)::numeric, 2) AS revenue,
    ROUND(SUM(profit)::numeric, 2) AS profit
FROM public.sales
GROUP BY region
ORDER BY revenue DESC;


-- 6. Monthly revenue and profit
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    ROUND(SUM(sales)::numeric, 2) AS revenue,
    ROUND(SUM(profit)::numeric, 2) AS profit
FROM public.sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY year, month;


-- 7. Top 10 products by revenue
SELECT
    product_name,
    ROUND(SUM(sales)::numeric, 2) AS revenue,
    ROUND(SUM(profit)::numeric, 2) AS profit
FROM public.sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;


-- 8. Bottom 10 products by profit
SELECT
    product_name,
    ROUND(SUM(profit)::numeric, 2) AS profit,
    ROUND(SUM(sales)::numeric, 2) AS revenue
FROM public.sales
GROUP BY product_name
ORDER BY profit ASC
LIMIT 10;


-- 9. Profit margin by region
SELECT
    region,
    ROUND(SUM(sales)::numeric, 2) AS revenue,
    ROUND(SUM(profit)::numeric, 2) AS profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_percentage
FROM public.sales
GROUP BY region
ORDER BY profit_margin_percentage DESC;

-- 10. High-revenue products with negative profit
SELECT
    product_name,
    ROUND(SUM(sales)::numeric, 2) AS revenue,
    ROUND(SUM(profit)::numeric, 2) AS profit
FROM public.sales
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY revenue DESC;