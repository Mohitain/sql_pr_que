create table customers(
customer_id int primary key,
customer_name varchar(50),
city varchar(50),
signup_date date
);

create table departments(
department_id int primary key,
department_name varchar(50)
);

create table orders (
order_id int primary key,
customer_id int,
department_id int,
order_date date,
amount decimal(10,2),
status varchar(20),
foreign key (customer_id) references customers(customer_id),
foreign key (department_id) references departments(department_id)
);

select * from customers;
select * from orders;
select * from departments;

insert into departments values
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home & Kitchen'),
(4, 'Sports'),
(5, 'Books');

insert into customers values
(1, 'Amit Sharma', 'Delhi', '2023-01-10'),
(2, 'Riya Verma', 'Mumbai', '2023-02-15'),
(3, 'Karan Mehta', 'Bangalore', '2023-03-05'),
(4, 'Neha Singh', 'Delhi', '2023-04-20'),
(5, 'Rahul Jain', 'Pune', '2023-05-12'),
(6, 'Sneha Kapoor', 'Mumbai', '2023-06-25'),
(7, 'Vikas Gupta', 'Delhi', '2023-07-01'),
(8, 'Anjali Das', 'Kolkata', '2023-08-14'),
(9, 'Rohit Yadav', 'Lucknow', '2023-09-30'),
(10, 'Priya Nair', 'Chennai', '2023-10-18'),
(11, 'Arjun Reddy', 'Hyderabad', '2023-11-02'),
(12, 'Meera Iyer', 'Chennai', '2023-12-11'),
(13, 'Sahil Khan', 'Delhi', '2024-01-05'),
(14, 'Pooja Patel', 'Ahmedabad', '2024-01-20'),
(15, 'Nikhil Arora', 'Delhi', '2024-02-10'),
(16, 'Simran Kaur', 'Chandigarh', '2024-02-25'),
(17, 'Manish Tiwari', 'Varanasi', '2024-03-01'),
(18, 'Kavita Joshi', 'Jaipur', '2024-03-10'),
(19, 'Deepak Mishra', 'Bhopal', '2024-03-15'),
(20, 'Ayesha Sheikh', 'Mumbai', '2024-03-20');

INSERT INTO orders VALUES
(1, 1, 1, '2024-01-01', 15000, 'Completed'),
(2, 2, 2, '2024-01-03', 2000, 'Completed'),
(3, 3, 3, '2024-01-05', 3500, 'Cancelled'),
(4, 1, 2, '2024-01-07', 1200, 'Completed'),
(5, 4, 1, '2024-01-08', 22000, 'Completed'),
(6, 5, 4, '2024-01-09', 5000, 'Pending'),
(7, 6, 5, '2024-01-10', 800, 'Completed'),
(8, 7, 3, '2024-01-11', 2700, 'Completed'),
(9, 8, 2, '2024-01-12', 1500, 'Cancelled'),
(10, 9, 1, '2024-01-13', 18000, 'Completed'),

(11, 10, 4, '2024-01-14', 4500, 'Completed'),
(12, 11, 5, '2024-01-15', 700, 'Completed'),
(13, 12, 3, '2024-01-16', 3200, 'Pending'),
(14, 13, 1, '2024-01-17', 25000, 'Completed'),
(15, 14, 2, '2024-01-18', 2100, 'Completed'),
(16, 15, 4, '2024-01-19', 6000, 'Cancelled'),
(17, 16, 3, '2024-01-20', 2800, 'Completed'),
(18, 17, 5, '2024-01-21', 900, 'Completed'),
(19, 18, 1, '2024-01-22', 17000, 'Pending'),
(20, 19, 2, '2024-01-23', 1300, 'Completed'),

(21, 20, 4, '2024-01-24', 5500, 'Completed'),
(22, 1, 5, '2024-01-25', 600, 'Completed'),
(23, 2, 3, '2024-01-26', 3100, 'Pending'),
(24, 3, 1, '2024-01-27', 20000, 'Completed'),
(25, 4, 2, '2024-01-28', 1800, 'Completed'),
(26, 5, 4, '2024-01-29', 7000, 'Completed'),
(27, 6, 5, '2024-01-30', 1000, 'Cancelled'),
(28, 7, 3, '2024-02-01', 2600, 'Completed'),
(29, 8, 1, '2024-02-02', 14000, 'Completed'),
(30, 9, 2, '2024-02-03', 1600, 'Completed'),

(31, 10, 4, '2024-02-04', 4800, 'Pending'),
(32, 11, 5, '2024-02-05', 750, 'Completed'),
(33, 12, 3, '2024-02-06', 3400, 'Completed'),
(34, 13, 1, '2024-02-07', 26000, 'Completed'),
(35, 14, 2, '2024-02-08', 2300, 'Completed'),
(36, 15, 4, '2024-02-09', 6200, 'Completed'),
(37, 16, 3, '2024-02-10', 2900, 'Cancelled'),
(38, 17, 5, '2024-02-11', 850, 'Completed'),
(39, 18, 1, '2024-02-12', 17500, 'Completed'),
(40, 19, 2, '2024-02-13', 1400, 'Pending'),

(41, 20, 4, '2024-02-14', 5600, 'Completed'),
(42, 1, 3, '2024-02-15', 3300, 'Completed'),
(43, 2, 1, '2024-02-16', 21000, 'Completed'),
(44, 3, 2, '2024-02-17', 1700, 'Completed'),
(45, 4, 4, '2024-02-18', 5200, 'Completed'),
(46, 5, 5, '2024-02-19', 950, 'Completed'),
(47, 6, 3, '2024-02-20', 3000, 'Pending'),
(48, 7, 1, '2024-02-21', 16000, 'Completed'),
(49, 8, 2, '2024-02-22', 1900, 'Completed'),
(50, 9, 4, '2024-02-23', 6100, 'Completed');

select o.customer_id,c.customer_name,sum(amount)
from orders o
join customers c on o.customer_id = c.customer_id
group by o.customer_id,c.customer_name
order by sum(amount) desc;

--------Joinsssssssssssssssss
select c.customer_name,sum(amount) as total_spending 
from customers c 
join orders o on c.customer_id = o.customer_id
group by c.customer_id
having sum(amount)>5000
order by total_spending desc;

select c.customer_id,c.customer_name
from customers c
left join orders o on c.customer_id = o.customer_id
where o.customer_id is null;

delete 
from orders

select * from orders;

select *
from customers c 
left join orders o on c.customer_id = o.customer_id
where 
where customer_id in (2,3)