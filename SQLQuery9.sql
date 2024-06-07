USE TOPS

Create table SalesPerson(
SNo INT Primary Key,
SName Varchar(20),
City Varchar(20),
Comm REAL
)

Insert Into SalesPerson(SNo, Sname, City, Comm)
Values(1001, 'Peel', 'London', .12),
(1002, 'Serres', 'San Jose', .13),
(1004, 'Motika', 'London', .11),
(1007, 'Rafkin', 'Barcelona', .15),
(1003, 'AxelRod', 'New York', .1)

Select * from SalesPerson

Create table Customer(
C_ID INT Primary Key,
CName Varchar(30),
City Varchar(20),
Rating REAL,
SNo INT Foreign Key References SalesPerson(SNo)
)

Insert Into Customer(C_ID,CName, City, Rating, SNo)
Values(201,'Hoffman', 'London', 100,1001),
(202,'Giovanne', 'Roe', 200,1003),
(203,'Liu', 'San Jose', 300,1002),
(204,'Grass', 'Barcelona', 100,1002),
(206,'Clemens', 'London', 300,1007),
(207,'Pereira', 'Roe', 100,1004)

Select * from Customer

Select SName, City from SalesPerson
Where Comm > .12

Select * from SalesPerson
Where City IN ('Barcelona','London')

Select * from SalesPerson
Where Comm > .1 AND Comm < .12

Select * from Customer
Where Rating > 100 OR City IN ('Roe')

Select Customer.CName, Customer.Rating, SalesPerson.Comm FROM SalesPerson
Inner Join Customer on SalesPerson.SNo = Customer.SNo