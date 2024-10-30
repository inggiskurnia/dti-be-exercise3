-- 1. Customers Table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    address TEXT
);

-- 2. Sellers Table
CREATE TABLE Sellers (
    seller_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location TEXT
);

-- 3. Invoices Table
CREATE TABLE Invoices (
    invoice_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    seller_id INT NOT NULL,
    purchase_date DATE,
    total_amount DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (seller_id) REFERENCES Sellers(seller_id)
);

-- 4. Products Table
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    weight DECIMAL(5, 2), -- weight in kg
    unit_price DECIMAL(15, 2) NOT NULL
);

-- 5. Invoice_Products Table (Association Table)
CREATE TABLE Invoice_Products (
    invoice_product_id SERIAL PRIMARY KEY,
    invoice_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    total_price DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (invoice_id) REFERENCES Invoices(invoice_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- 6. Shipping_Details Table
CREATE TABLE Shipping_Details (
    shipping_id SERIAL PRIMARY KEY,
    invoice_id INT NOT NULL,
    courier VARCHAR(100),
    shipping_cost DECIMAL(15, 2),
    insurance_cost DECIMAL(15, 2),
    FOREIGN KEY (invoice_id) REFERENCES Invoices(invoice_id)
);

-- 7. Payments Table
CREATE TABLE Payments (
    payment_id SERIAL PRIMARY KEY,
    invoice_id INT NOT NULL,
    payment_method VARCHAR(50),
    amount DECIMAL(15, 2) NOT NULL,
    promo_code VARCHAR(20),
    promo_discount DECIMAL(15, 2),
    FOREIGN KEY (invoice_id) REFERENCES Invoices(invoice_id)
);

-- 8. Promotions Table
CREATE TABLE Promotions (
    promo_code VARCHAR(20) PRIMARY KEY,
    description TEXT,
    discount_amount DECIMAL(15, 2)
);
