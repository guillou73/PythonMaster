CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    address VARCHAR(255)
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    stock_quantity INT
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_amount DECIMAL(10, 2),
    payment_method VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO customers (first_name, last_name, email, phone_number, address)
VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm Street'),
('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak Avenue'),
('Hitesh','Patel','hitesh.patel@example.com','123-432-2332', 'SO50 6LS Park Avenue'),
('Raj','Kumar','raj.kumar@example.com','433-432-2332', 'SO50 5LS Park Avenue');

INSERT INTO products (name, description, price, stock_quantity)
VALUES
('Laptop', 'High performance laptop', 999.99, 50),
('Smartphone', 'Latest model smartphone', 599.99, 200),
('Tablets', 'Latest model Tablet', 199.99, 150);

INSERT INTO orders (order_date, customer_id, total_amount)
VALUES
('2024-12-01', 1, 1599.98),
('2024-12-02', 2, 599.99),
('2024-12-03', 3, 299.99);

INSERT INTO order_details (order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 999.99),  -- Customer 1 ordered 1 Laptop
(1, 2, 1, 599.99),  -- Customer 1 also ordered 1 Smartphone
(2, 2, 1, 599.99);  -- Customer 2 ordered 1 Smartphone

INSERT INTO payments (order_id, payment_date, payment_amount, payment_method)
VALUES
(1, '2024-12-01', 1599.98, 'Credit Card'),
(2, '2024-12-02', 599.99, 'PayPal'),
(3, '2024-12-03', 299.99, 'Gpay');

Select * from customers;

SELECT p.name, od.quantity, od.price
FROM order_details od
JOIN products p ON od.product_id = p.product_id
WHERE od.order_id = 1;

SELECT c.first_name, c.last_name, SUM(p.payment_amount) AS total_paid
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.customer_id;

INSERT INTO customers (first_name, last_name, email, phone_number, address)
VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', '111-222-3333', '789 Pine Road'),
('Bob', 'Davis', 'bob.davis@example.com', '444-555-6666', '321 Maple Drive');

INSERT INTO products (name, description, price, stock_quantity)
VALUES
('Tablet', '10-inch tablet', 299.99, 150),
('Smartwatch', 'Fitness tracking smartwatch', 199.99, 100),
('Headphones', 'Noise-canceling headphones', 149.99, 120);

INSERT INTO orders (order_date, customer_id, total_amount)
VALUES
('2024-12-03', 3, 299.99),  -- Alice ordered 1 Tablet
('2024-12-03', 4, 199.99),  -- Bob ordered 1 Smartwatch
('2024-12-04', 1, 849.98),  -- John ordered 1 Smartphone and 1 Headphones
('2024-12-04', 2, 999.98);  -- Jane ordered 1 Laptop and 1 Tablet

INSERT INTO order_details (order_id, product_id, quantity, price)
VALUES
(3, 3, 1, 299.99),  -- Alice ordered 1 Tablet
(4, 4, 1, 199.99),  -- Bob ordered 1 Smartwatch
(5, 2, 1, 599.99),  -- John ordered 1 Smartphone
(5, 6, 1, 149.99),  -- John ordered 1 Headphones
(6, 1, 1, 999.99),  -- Jane ordered 1 Laptop
(6, 3, 1, 299.99);  -- Jane ordered 1 Tablet

INSERT INTO payments (order_id, payment_date, payment_amount, payment_method)
VALUES
(3, '2024-12-03', 299.99, 'Credit Card'),  -- Alice paid for Tablet
(4, '2024-12-03', 199.99, 'PayPal'),      -- Bob paid for Smartwatch
(5, '2024-12-04', 849.98, 'Credit Card'),  -- John paid for Smartphone and Headphones
(6, '2024-12-04', 999.99, 'Debit Card');   -- Jane paid for Laptop and Tablet