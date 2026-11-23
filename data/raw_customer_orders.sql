-- 1. Create the Raw Orders Table
CREATE TABLE raw_customer_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    region VARCHAR(50),
    order_date DATE,
    order_amount DECIMAL(10, 2),
    shipping_fee DECIMAL(10, 2)
);

-- 2. Insert Sample Business Data (with data-cleaning edge cases)
INSERT INTO raw_customer_orders 
(order_id, customer_name, email, region, order_date, order_amount, shipping_fee)
VALUES
(101, '  Sarah Jenkins ', 'SARAH.J@GMAIL.COM', 'North America', '2026-01-15', 250.00, 15.00),
(102, 'michael scott', 'MScott@DunderMifflin.com', 'north america', '2026-01-18', 45.00, NULL),
(103, 'Elena Rostova  ', 'elena.rostova@gmail.com', 'Europe', '2026-01-20', 1200.00, 25.00),
(104, 'sarah jenkins', 'sarah.j@gmail.com', 'NORTH AMERICA', '2026-02-02', 450.00, 15.00),
(105, 'David Kim ', 'dkim@techcorp.io', 'Asia', '2026-02-10', 85.00, NULL),
(106, 'ELENA ROSTOVA', 'elena.rostova@gmail.com', 'europe', '2026-02-14', 950.00, 20.00),
(107, '  James Wilson', 'j.wilson@yahoo.com', 'North America', '2026-02-20', 310.00, 10.00),
(108, 'david kim', 'dkim@techcorp.io', 'asia', '2026-02-25', 120.00, 5.00),
(109, 'Anita Patel ', 'anita.patel@designs.in', 'Asia', '2026-03-01', 1500.00, 30.00),
(110, 'Michael Scott', 'mscott@dundermifflin.com', 'North America', '2026-03-05', 60.00, 5.00);
