USE TOPS

Create table faculty1(
ID INT Primary Key,
Name Varchar(50),
Joining_date DATE,
Salary REAL)

Insert Into faculty1(ID, Name, Joining_date, Salary)
Values(1,'AB','02-04-2022',2000),
(2,'CD','01-03-2023',3000),
(3,'DE','02-05-2021',4000)

Select * from faculty1

Create View faculty_view AS
Select ID, Name from faculty1

select * from faculty_view

Create View faculty_new AS
Select Name, Salary from faculty1

select * from faculty_new

drop view faculty_view

Select COUNT(ID)
FROM faculty