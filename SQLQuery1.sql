Create database TOPS

create table faculty(
ID INT, 
Name VARCHAR(50),
Salary REAL,
Address VARCHAR(250));

INSERT INTO faculty(ID, Name, Salary, Address)
Values(1, 'Muktak',20000.00,'Vadodara'),
(2,'Sachin',30000.00, 'Ahmebabad')

Select * from faculty

INSERT INTO faculty(ID, Name, Salary, Address)
Values(3, 'Virat',40000.00,'')

Update faculty SET Address = 'Surat' WHERE ID=3
