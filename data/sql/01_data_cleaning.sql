-- Clean customer names, emails, regions, and missing shipping fees
SELECT
    order_id,
    TRIM(customer_name) AS clean_customer_name,
    LOWER(email) AS clean_email,
    UPPER(TRIM(region)) AS clean_region,
    order_date,
    order_amount,
    COALESCE(shipping_fee, 10.00) AS final_shipping_fee,
    order_amount + COALESCE(shipping_fee, 10.00) AS total_paid
FROM raw_customer_orders;
