CREATE DATABASE ASDMTECH

USE ASDMTECH

Create Table Emp_data(
ID INT NOT NULL,
Name VARCHAR(20))

INSERT INTO Emp_data(ID, Name)
Values(1,'AB'),
(2,'CD'),
(3,'EF'),
(4,'GH'),
(5,'JK')

Select * FROM Emp_data

begin transaction
INSERT INTO Emp_data(ID,Name) Values(6,'LM');
rollback;

Select * FROM Emp_data

begin transaction
INSERT INTO Emp_data(ID,Name) Values(6,'LM');
COMMIT;

Select * FROM Emp_data

begin transaction
delete from Emp_data WHERE ID = 6;
rollback

Select * FROM Emp_data

begin transaction
INSERT INTO Emp_data(ID, Name) Values(7,'NO')
Save transaction save1
COMMIT;

Select * FROM Emp_data

begin transaction
rollback;
