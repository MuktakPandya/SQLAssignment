USE TOPS

Create table Student1 (RollNo INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Branch VARCHAR(50) NOT NULL)

Create table Exam (RollNo INT PRIMARY KEY,
S_Code VARCHAR(50) NOT NULL,
Marks REAL NOT NULL,
P_Code VARCHAR(50) NOT NULL)

INSERT INTO Student1 (RollNo, Name, Branch)
Values(1,'Jay', 'Computer Science'),
(2,'Suhani', 'Electronic and Com'),
(3,'Kriti', 'Electronic and Com')

Select * from Student1

TRUNCATE Table Student1;

INSERT INTO Exam(RollNo, S_Code, Marks, P_Code)
Values(1, 'CS11', 50, 'CS'),
(2, 'CS12', 60, 'CS'),
(3, 'EC101', 66, 'EC'),
(4, 'EC102', 70, 'EC'),
(5, 'EC101', 45, 'EC'),
(6, 'EC102', 50, 'EC')

Select * from Exam

DROP Table Exam;