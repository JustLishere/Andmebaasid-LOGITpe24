-- Loome uue Category(idCategory, Category_Name) tabeli
CREATE TABLE Category(
idCategory int Primary Key identity(1,1),
Category_Name varchar(25) UNIQUE)

INSERT INTO Category
VALUES ('Auto'),('Jook'), ('Toit');

select * from Category;

--Loome uue Producti(idProduct, Name, idCategory)
CREATE TABLE Product(
idProduct int Primary Key identity(1,1),
PName varchar(25),
idCategory int,
Foreign Key (idCategory) References Category(idCategory),
Price money)

INSERT INTO Product
values ('JuustuBurger', 3, 3.60)

select * from Product;

--Loome uue Sale (idSale, idProduct, idCustomer, Count_pr, Date_of_sale)
CREATE TABLE Sale(
idSale int Primary Key identity(1,1),
idProduct int,
Foreign Key (idProduct) References Product(idProduct),
idCustomer int,
count_pr int,
date_of_sale date)

--Lisame tabel Customer(idCustomer, Name, contact) ja siduda tabeliga Sale
CREATE TABLE Customer(
idCustomer int Primary Key identity (1,1),
Name varchar(25) UNIQUE,
Contact varchar(100))

ALTER TABLE Sale ADD Foreign Key (idCustomer) References Customer(idCustomer)

INSERT INTO Customer
Values ('Kevin', '+23904944'), ('Robin', '+04835045')

select * from Product;
select * from Customer;
select * from Sale;

INSERT INTO Sale
Values (1, 1, 5, '2026-04-15')
