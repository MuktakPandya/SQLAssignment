/*Create Database
Create 2 Tables
1. Faculty
2. Student
Insert (row)
Select
UPDATE
Add 1-1 column each and input row information
-Savepoint
-Commit
-Rollback
-delete row information
-truncate
-drop*/

Create Database College

USE College

Create table Faculty(
ID INT Primary Key,
Name VARCHAR(20),
Department VARCHAR(20),
)

Create table Student(
ID INT Primary Key,
Name VARCHAR(20),
Stream VARCHAR(20)
)

Insert Into Faculty(ID, Name, Department)
Values(101, 'AB','CSE'),
(102,'CD','ECE')

Insert Into Student(ID, Name, Stream)
Values(201,'EF','ECE'),
(202,'GH','CSE')

Update Faculty SET ID = 103 WHERE Name = 'AB';
Update Student SET ID = 204 WHERE Stream = 'CSE';

Select * from Faculty

Select * from Student

begin transaction
Insert Into Faculty(ID, Name, Department) Values(105,'JK','MECH')

Select * from Faculty

begin transaction
Rollback;

begin transaction
delete from Student where ID = 201

Select * from Student

begin transaction
rollback;

begin transaction
Insert Into Faculty(ID, Name, Department) Values(105,'JK','MECH')
save transaction save1
COMMIT;

Select * from Faculty

begin transaction
Rollback;

Select * from Faculty

TRUNCATE Table Faculty

Drop table Student