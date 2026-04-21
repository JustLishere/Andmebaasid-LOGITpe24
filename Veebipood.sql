create database LiseteVeebipood;
use LiseteVeebipood;

--Tabel Brands
create table brands(
brand_id int primary key identity(1,1),
brand_name varchar(25) UNIQUE)

insert into brands
values ('Adidas')

select * from brands

-- Tabel Categories
create table categories(
category_id int primary key identity(1,1),
category_name varchar(25) UNIQUE)

insert into categories
values ('jalanõud')

select * from categories

-- Tabel Products
create table products(
product_id int primary key identity(1,1),
product_name varchar(25) UNIQUE,
brand_id int,
foreign key (brand_id) references brands(brand_id),
category_id int,
foreign key (category_id) references categories(category_id),
model_year int,
list_price money)

select * from products

insert into products
values ('jooksupüksid', 2, 1, 2026, 10.99)

-- Tabel Customers
create table customers(
customer_id int primary key identity(1,1),
first_name varchar(25) not null,
last_name varchar(25) not null,
phone char(13),
email varchar(25) not null,
street varchar(25),
city varchar(25),
state varchar(25),
zip_code char(5))

select * from customers

insert into customers
values ('Lisa', 'Mägi', '3857548', 'lisamagi@gmail.com', 'Puie Tänav', 'Tallinn', 'Harjumaa', '24255')

-- Tabel Stores
create table stores(
store_id int primary key identity(1,1),
store_name varchar(25) Unique not null,
phone char(13),
email varchar(25) not null,
street varchar(25),
city varchar(25),
state varchar(25),
zip_code char(5))

select * from stores

insert into stores
values ('sportland', '43298748', 'sportland@gmail.com', 'Rohe Tänav', 'Tallinn', 'Harjumaa', '22545')

-- Tabel Staff
create table staff(
staff_id int primary key identity(1,1),
first_name varchar(25) not null,
last_name varchar(25) not null,
email varchar(25) not null,
phone char(13),
active bit,
store_id int,
foreign key(store_id) references stores(store_id),
manager_id bit)

select * from staff

insert into staff
values ('Daniella', 'Kuusik', 'kuusik@gmail.com', '44948375', 1, 1, 0)


-- Tabel Stocks
create table stocks(
store_id int,
product_id int,
primary key (store_id, product_id),
foreign key (store_id) references stores(store_id),
foreign key (product_id) references products(product_id),
quantity int)

select * from stores
select * from products
select * from stocks

insert into stocks
values (1, 2, 20), (1, 1, 50)

-- Tabel Orders
create table orders(
order_id int primary key identity(1,1),
customer_id int,
foreign key (customer_id) references customers(customer_id),
order_status varchar(10) check(order_status = 'tehtud' or order_status = 'tegematta'),
order_date date,
required_date date,
shipped_date date,
store_id int,
foreign key (store_id) references stores(store_id),
staff_id int,
foreign key (staff_id) references staff(staff_id))

select * from orders
select * from stores
select * from staff
select * from customers

insert into orders
values (1, 'tehtud', '2026-03-25', '2026-04-2', '2026-03-31', 1, 1)

-- Tabel order_items
create table order_items(
order_id int,
foreign key (order_id) references orders(order_id),
item_id int,
product_id int,
foreign key (product_id) references products(product_id),
primary key(order_id, item_id),
quantity int,
list_price money,
discount int)

select * from order_items
select * from products
select * from orders

insert into order_items
values (1, 1, 2, 40, 16.99, 20)
