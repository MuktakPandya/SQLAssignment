USE TOPS

select * from Employee;

--without cursor variable
declare mycursor cursor scroll for select * from Employee
open mycursor
fetch first from mycursor
fetch next from mycursor
fetch last from mycursor
fetch prior from mycursor
fetch absolute 7 from mycursor
fetch relative -1 from mycursor
close mycursor
deallocate mycursor

-- with cursor variable

declare mycursor cursor scroll for select Employee_ID, First_Name, Department from Employee;
declare @EmployeeID INT, @FirstName Varchar(20), @DepartmentName Varchar(30)

open mycursor
fetch first from mycursor into @EmployeeID, @FirstName, @DepartmentName
print 'Employee is: ' + cast(@EmployeeID as Varchar(20)) + ' ' + @FirstName + ' and Department is ' + @DepartmentName;

fetch next from mycursor into @EmployeeID, @FirstName, @DepartmentName
print 'Employee is: ' + cast(@EmployeeID as Varchar(20)) + ' ' + @FirstName + ' and Department is ' + @DepartmentName;

fetch last from mycursor into @EmployeeID, @FirstName, @DepartmentName
print 'Employee is: ' + cast(@EmployeeID as Varchar(20)) + ' ' + @FirstName + ' and Department is ' + @DepartmentName;

fetch prior from mycursor into @EmployeeID, @FirstName, @DepartmentName
print 'Employee is: ' + cast(@EmployeeID as Varchar(20)) + ' ' + @FirstName + ' and Department is ' + @DepartmentName;

fetch absolute 7 from mycursor into @EmployeeID, @FirstName, @DepartmentName
print 'Employee is: ' + cast(@EmployeeID as Varchar(20)) + ' ' + @FirstName + ' and Department is ' + @DepartmentName;

fetch relative -1 from mycursor into @EmployeeID, @FirstName, @DepartmentName
print 'Employee is: ' + cast(@EmployeeID as Varchar(20)) + ' ' + @FirstName + ' and Department is ' + @DepartmentName;

close mycursor
deallocate mycursor

