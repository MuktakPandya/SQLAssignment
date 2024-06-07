USE TOPS

Create table Employee(
Employee_ID INT Primary Key,
First_Name Varchar(30),
Last_Name Varchar(30),
Salary REAL,
Joining_Date DATETIME,
Department Varchar(20)
)

Insert Into Employee(Employee_ID, First_Name, Last_Name, Salary, Joining_Date, Department)
Values(1, 'John','Abraham', 1000000, '01-JAN-13 12:00:00','Banking'),
(2, 'Michael','Clark', 800000, '01-JAN-13 12:00:00','Insurance'),
(3, 'Roy','Thomas', 700000, '01-FEB-13 12:00:00','Banking'),
(4, 'Tom','Jose', 600000, '01-FEB-13 12:00:00','Insurance'),
(5, 'Jerry','Pinto', 650000, '01-FEB-13 12:00:00','Insurance'),
(6, 'Philip','Mathew', 750000, '01-JAN-13 12:00:00','Services'),
(7, 'TestName1','123', 650000, '01-JAN-13 12:00:00','Services'),
(8, 'TestName2','LName%', 600000, '01-FEB-13 12:00:00','Insurance')

Select * from Employee
Where First_Name = 'Tom';

Select First_Name, Joining_date, Salary from Employee;

Select * from Employee
Order by First_Name ASC

Select * from Employee
Order by Salary DESC;

Select * from Employee
Order by First_Name ASC, Salary DESC;

Select * from Employee
Where First_Name Like 'J%';

Select * from Employee
Where Salary > 10000;

Select * from Employee
Order by Salary ASC;

Select COUNT(Department), Department, Salary from Employee
Group by Department, Salary

Create table Incentive(
Employee_ref_id INT NOT NULL,
Incentive_date DATE,
Incentive_amount REAL
)

Insert Into Incentive(Employee_ref_id, Incentive_date, Incentive_amount)
Values(1,'01-FEB-13',5000),
(2,'01-FEB-13',3000),
(3,'01-FEB-13',4000),
(1,'01-JAN-13',4500),
(2,'01-JAN-13',3500)

Select ID, First_Name from Employee
Where Incentive_amount > (Select Incentive_amount from Incentive)