USE TOPS

create table employees(
  employeeNumber int IDENTITY(1,1) PRIMARY KEY,
  lastname varchar(20) NOT null,
  firstname varchar(20) NOT null,
  email varchar(20) NOT null,
)

insert into employees(firstname,lastname,email) 
values ('hitesh','gajeria','h@gmail.com'),
('jitesh','kajeria','j@gmail.com'),
('mitesh','dajeria','m@gmail.com'),
('ritesh','rajeria','r@gmail.com'),
('nitesh','tajeria','n@gmail.com')

Select * from employees

CREATE TABLE employees_audit (
    id INT IDENTITY(1,1) PRIMARY KEY,
    employeeNumber INT NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    changedat DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
)

Select * from employees_audit

CREATE TRIGGER before_employees_update 
    BEFORE UPDATE ON employees 
    FOR EACH ROW
	BEGIN
	IF NEW.employeeNumber <> OLD.employeeNumber
 INSERT INTO employees_audit(id,OLD.employeeNumber, NEW.employeeNumber)
 Values(New.id,OLD.employeeNumber, NEW.employeeNumber)
 END
 SET action = 'update'
     employeeNumber = OLD.employeeNumber,
    /* firstname=OLD.firstname,*/
     lastname = OLD.lastname,
     changedat = NOW()

	 SHOW TRIGGERS;

	 UPDATE `employees` 
SET 
    `lastname` = 'kankaria'
WHERE
   `employees`. `employeeNumber` = 3;

	SELECT * FROM employees_audit;

