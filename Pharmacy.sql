create database pharmacyyy;
use pharmacyyy;
create table Medicines
(
MedicineID int primary key,
MedicineName varchar(50),
Price decimal(10,2),
Quantity int
);
create table Pharmacists
(
PharmacistID int primary key,
PharmacistName varchar(50),
PhoneNumber varchar(15)
);
create table Customers
(
CustomerID int primary key,
CustomerName varchar(50),
Age int
);
create table Sales
(
SaleID int primary key,
MedicineID int,
CustomerID int,
Date date,
foreign key(MedicineID)references Medicines(MedicineID),
foreign key(CustomerID)references Customers(CustomerID)
);
INSERT INTO Medicines 
VALUES
(1, 'Panadol', 20, 50),
(2, 'Panadol Extra', 30, 50),
(3, 'Vitamin A', 25, 40),
(4, 'Vitamin C', 35, 30),
(5, 'Aspirin', 50, 20);

INSERT INTO Pharmacists 
VALUES
(1, 'Ahmed', '01012345678'),
(2, 'Sara', '01098765432'),
(3, 'Omar', '01234567890'),
(4, 'Aya', '01587591234'),
(5, 'Ziad', '01200567895');

INSERT INTO Customers 
VALUES
(1, 'Ali', 25),
(2, 'Nour', 20),
(3, 'Alaa', 19),
(4, 'Mariam', 28),
(5, 'Mohamed', 35);

INSERT INTO Sales 
VALUES
(1, 1, 1, '2025-01-01'),
(2, 2, 2, '2025-04-23'),
(3, 3, 3, '2025-11-27'),
(4, 4, 4, '2026-01-23'),
(5, 5, 5, '2026-02-26');


select * from Medicines;
select PharmacistName from Pharmacists;
select * from Medicines order by Price asc;
select distinct MedicineName from Medicines;
update Medicines
set Quantity = 100
where MedicineID = 2;
delete from Sales 
where MedicineID = 5;
delete from Medicines 
where MedicineID = 5;








































