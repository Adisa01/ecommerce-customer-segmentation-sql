-- Save a reusable view for Excel Pivot Tables and reporting
CREATE VIEW view_vip_customer_profiling AS
WITH cleaned_orders AS (
    SELECT
        order_id,
        TRIM(customer_name) AS customer_name,
        LOWER(TRIM(email)) AS customer_email,
        UPPER(TRIM(region)) AS region,
        order_amount,
        COALESCE(shipping_fee, 10.00) AS shipping_fee
    FROM raw_customer_orders
),
customer_summary AS (
    SELECT
        customer_email,
        MAX(customer_name) AS customer_name,
        MAX(region) AS region,
        COUNT(order_id) AS total_orders,
        SUM(order_amount) AS lifetime_spend,
        ROUND(AVG(order_amount), 2) AS avg_order_value
    FROM cleaned_orders
    GROUP BY customer_email
)
SELECT
    customer_name,
    customer_email,
    region,
    total_orders,
    lifetime_spend,
    avg_order_value,
    CASE
        WHEN lifetime_spend >= 1000 THEN 'VIP Tier'
        WHEN lifetime_spend >= 400 THEN 'Regular Tier'
        ELSE 'Low Spender'
    END AS customer_segment
FROM customer_summary;
