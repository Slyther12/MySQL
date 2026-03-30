--1. Database Schema :- Creating and using database

create database company_sales;

show databases;

use company_sales;

--2. Creating tables inside database

--creating table employees
create table employees(
emp_id int primary key,
name varchar(25),
department varchar(25),
salary int,
hire_date date,
manager_id int
);

--creating table customers
create table customers(
customer_id int primary key,
name varchar(25),
city varchar(25),
signup_date date
);

--creating table products
create table products(
product_id int primary key,
product_name varchar(25),
category varchar(25),
price int
);

--creating table orders
create table orders(
order_id int primary key,
customer_id int,
order_date date,
employee_id int,
total_amount int
);

--creating table order_items
create table order_items(
order_item_id int primary key,
order_id int,
product_id int,
quantity int,
price int
);
```

--3. Inserting data into tables

insert into employees values
(1,'Aman','Sales',60000,'2021-01-10',NULL),
(2,'Rahul','Sales',50000,'2021-03-12',1),
(3,'Neha','IT',70000,'2020-05-01',NULL),
(4,'Priya','IT',65000,'2022-06-15',3),
(5,'Arjun','HR',55000,'2023-01-01',NULL),
(6,'Karan','Sales',45000,'2023-04-10',1);

insert into customers values
(101,'Rohit','Mumbai','2023-01-01'),
(102,'Simran','Delhi','2023-02-10'),
(103,'Amit','Pune','2023-03-05'),
(104,'Sneha','Mumbai','2023-04-18'),
(105,'Vikram','Bangalore','2023-05-22');

insert into products values
(1,'Laptop','Electronics',70000),
(2,'Phone','Electronics',30000),
(3,'Tablet','Electronics',20000),
(4,'Shoes','Fashion',5000),
(5,'Watch','Fashion',8000),
(6,'Backpack','Fashion',3000);

insert into orders values
(201,101,'2024-01-05',2,72000),
(202,102,'2024-01-10',2,30000),
(203,101,'2024-02-11',6,5000),
(204,103,'2024-02-15',2,8000),
(205,104,'2024-03-01',6,2000),
(206,105,'2024-03-03',2,70000);

insert into order_items values
(1,201,1,1,70000),
(2,201,3,1,2000),
(3,202,2,1,30000),
(4,203,4,1,5000),
(5,204,5,1,8000),
(6,205,3,1,2000),
(7,206,1,1,70000);
