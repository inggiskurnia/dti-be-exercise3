-- Insert into Customers Table
INSERT INTO Customers (name, phone, address) VALUES
('Sum Ting Wong', '6281312341234', 'Digital Park, Sambau, Kecamatan Nongsa, Kota Batam, Kepulauan Riau 29466'),
('John Doe', '6281312345678', 'Jl. Jend. Sudirman, Jakarta, Indonesia'),
('Jane Smith', '6281123456789', 'Jl. Merdeka Barat, Bandung, Indonesia');

-- Insert into Sellers Table
INSERT INTO Sellers (name, location) VALUES
('COC Komputer', 'Jl. Asia Afrika, Jakarta, Indonesia'),
('ABC Electronics', 'Jl. Gatot Subroto, Jakarta, Indonesia'),
('XYZ Computer Store', 'Jl. Diponegoro, Surabaya, Indonesia');

-- Insert into Products Table
INSERT INTO Products (name, weight, unit_price) VALUES
('SAPPHIRE NITRO+ Radeon RX 7900 XTX 24GB', 5.0, 20500000),
('NVIDIA GeForce RTX 4090 24GB', 4.5, 30000000),
('AMD Ryzen 9 7950X Processor', 0.5, 9500000);

-- Insert into Invoices Table
INSERT INTO Invoices (customer_id, seller_id, purchase_date, total_amount) VALUES
(1, 1, '2024-05-22', 20685000),
(2, 2, '2024-05-23', 30500000),
(3, 1, '2024-05-24', 9500000);

-- Insert into Invoice_Products Table
INSERT INTO Invoice_Products (invoice_id, product_id, quantity, total_price) VALUES
(1, 1, 1, 20500000),
(2, 2, 1, 30000000),
(3, 3, 1, 9500000);

-- Insert into Shipping_Details Table
INSERT INTO Shipping_Details (invoice_id, courier, shipping_cost, insurance_cost) VALUES
(1, 'J&T - Reguler', 126000, 57700),
(2, 'SiCepat - Express', 150000, 60000),
(3, 'Pos Indonesia', 50000, 25000);

-- Insert into Payments Table
INSERT INTO Payments (invoice_id, payment_method, amount, promo_code, promo_discount) VALUES
(1, 'BCA Virtual Account', 20685000, 'DDDT845', 986385),
(2, 'Mandiri Virtual Account', 30500000, NULL, 0),
(3, 'GoPay', 9500000, 'DISCOUNT50', 500000);

-- Insert into Promotions Table
INSERT INTO Promotions (promo_code, description, discount_amount) VALUES
('DDDT845', 'Promo Cashback Tokopedia', 986385),
('DISCOUNT50', '50% Discount up to 500k', 500000),
('NEWUSER10', '10% Discount for New Users', 100000);
