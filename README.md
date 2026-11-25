# E-Commerce Customer Retention & VIP Profiling

## Business Problem
Raw e-commerce order data often contains inconsistent text formatting, missing shipping fees, and duplicate customer records across different email casings. This project cleans the raw order data and segments customers into loyalty tiers so marketing and leadership can identify high-value repeat buyers and target retention campaigns effectively.

## Repository Structure
- `data/raw_customer_orders.sql` — Schema creation and sample raw order data.
- `sql/01_data_cleaning.sql` — Standardizes names, emails, regions, and default shipping fees.
- `sql/02_customer_ctes.sql` — Aggregates customer lifetime spend, assigns loyalty tiers, and compares spend against the store average.
- `sql/03_views_export.sql` — Creates a reusable `view_vip_customer_profiling` view for reporting and Excel Pivot Tables.

## Key SQL Techniques Used
- **Data Cleaning:** `TRIM()`, `LOWER()`, `UPPER()`, and `COALESCE()`
- **Aggregations & Grouping:** `COUNT()`, `SUM()`, `ROUND()`, `GROUP BY`
- **Structured Logic:** Common Table Expressions (`WITH`), `CASE WHEN` tiering, and subqueries
- **Reporting Layer:** `CREATE VIEW`

## Customer Tier Logic
- **VIP Tier:** Lifetime spend greater than or equal to $1,000
- **Regular Tier:** Lifetime spend from $400 to $999.99
- **Low Spender:** Lifetime spend below $400
