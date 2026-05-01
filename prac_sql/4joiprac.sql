-- language detection refresh

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
);
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
);
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

select * from customers;
select * from products;
select * from orders;

drop table customers ;
drop table products;
drop table orders;


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    signup_date DATE NOT NULL
);
INSERT INTO customers (customer_id, customer_name, city, signup_date) VALUES
(1,'Mohit','Delhi','2023-01-10'),
(2,'Rahul','Mumbai','2023-02-15'),
(3,'Ankit','Bangalore','2023-03-20'),
(4,'Neha','Delhi','2023-05-11'),
(5,'Priya','Pune','2023-06-01'),
(6,'Arjun','Mumbai','2023-07-18');


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL
);

INSERT INTO products (product_id, product_name, category) VALUES
(10,'Laptop','Electronics'),
(11,'Phone','Electronics'),
(12,'Mouse','Accessories'),
(13,'Keyboard','Accessories'),
(14,'Tablet','Electronics');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_status VARCHAR(20) NOT NULL,
    
    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, customer_id, order_date, order_status) VALUES
(101,1,'2024-01-02','Delivered'),
(102,2,'2024-01-04','Delivered'),
(103,1,'2024-01-06','Cancelled'),
(104,3,'2024-01-08','Delivered'),
(105,4,'2024-01-09','Delivered'),
(106,2,'2024-01-11','Delivered'),
(107,5,'2024-01-13','Pending');

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    price INT NOT NULL CHECK (price > 0),

    CONSTRAINT fk_items_order
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    CONSTRAINT fk_items_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

INSERT INTO order_items (item_id, order_id, product_id, quantity, price) VALUES
(1,101,10,1,800),
(2,101,12,2,20),
(3,102,11,1,500),
(4,103,13,1,50),
(5,104,10,1,800),
(6,105,12,3,20),
(7,106,11,1,500),
(8,107,14,1,300);

select * from customers;
select * from orders;
select * from order_items;
select * from products;

select c.customer_name,o.order_date
from customers c
join orders o on c.customer_id = o.customer_id;

select c.customer_name,p.product_name,oi.quantity,oi.price
from customers c
join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id
;

select p.product_name,c.customer_name,c.city
from customers c 
join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id
where o.order_status = 'Delivered';

select * from products;

select sum(oi.quantity*oi.price),c.customer_name
from customers c
join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id
group by c.customer_name
