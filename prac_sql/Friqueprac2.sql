CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Mohit', 'Delhi'),
(2, 'Rahul', 'Mumbai'),
(3, 'Ankit', 'Bangalore'),
(4, 'Neha', 'Delhi');


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL
)
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    order_date DATE NOT NULL,
    amount INT CHECK (amount > 0),

    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
)
INSERT INTO products VALUES
(10, 'Laptop', 'Electronics'),
(11, 'Phone', 'Electronics'),
(12, 'Mouse', 'Accessories'),
(13, 'Keyboard', 'Accessories')
INSERT INTO orders VALUES
(101, 1, 10, '2024-01-01', 500),
(102, 2, 11, '2024-01-03', 700),
(103, 1, 12, '2024-01-05', 200),
(104, 3, 10, '2024-01-06', 500),
(105, 2, 13, '2024-01-08', 900);

drop table orde