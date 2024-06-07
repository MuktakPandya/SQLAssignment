USE TOPS

Create table Student (ID INT NOT NULL PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Marks REAL)

INSERT INTO Student(ID, Name, Marks)
Values('','Muktak',99.98)

Select * FROM Student

Update Student SET ID = 1 WHERE Name = 'Muktak'

INSERT INTO Student(ID, Name, Marks)
Values(2,'Sachin',98.99),
(3, 'Virat',99.89)

ALTER Table Student ADD City VARCHAR(30)

Update Student SET City = 'Vadodara' WHERE ID = 1;
Update Student SET City = 'Ahmedabad' WHERE ID = 2;
Update Student SET City = 'Surat' WHERE ID = 3;

Select * from Student
