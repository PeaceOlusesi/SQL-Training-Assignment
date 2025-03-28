--Create a table named: FoodCo. Load the data

drop table if exists [FoodCo.]
create table [FoodCo.]
("S.no" int null,
FruitsName varchar (50) not null,
Amount int null)

insert into [FoodCo.]
([S.no], FruitsName, Amount)
values
(1,'Apple',150),
(2,'Banana',75),
(3,'Orange',60),
(4,'Papaya',80),
(5,'Mango',95),
(6,'Apple',150),
(7,'lechi', null)
Go


--1:write a query to show the unique fruitsname
--2:--write a query to show the highest amount
--3:--Write a query to show the lowest amount
--4:--Write a query to show the fruit that  does not have any amount
--5:--Give 2500 for any record that shows missing amount

--1:write a query to show the unique fruitsname

SELECT DISTINCT fruitsname
FROM [FoodCo.];
Go

--2:--write a query to show the highest amount

SELECT MAX(amount) AS highest_amount
FROM [FoodCo.];
go

--3:--Write a query to show the lowest amount

SELECT MIN(amount) AS lowest_amount
FROM [FoodCo.];
go

--4:--Write a query to show the fruit that  does not have any amount

SELECT *
FROM [FoodCo.]
WHERE Amount IS NULL;
go


--5:--Give 2500 for any record that shows missing amount

UPDATE [FoodCo.]
SET amount = 2500
WHERE amount IS NULL OR amount = 0;
go



drop Table if exists Employees
Create Table Employees  
(  
Id int primary key identity(1, 1),  
Name varchar(50), 
Gender varchar(10),  
Salary int,  
Country varchar(10)  
)  
Insert Into Employees Values ('Usama', 'Male', 5000, 'USA')  
Insert Into Employees Values ('Safwan', 'Male', 4500, 'India')  
Insert Into Employees Values ('Gulraiz', 'Female', 5500, 'USA')  
Insert Into Employees Values ('Ayesha', 'Female', 4000, 'India')  
Insert Into Employees Values ('Anas', 'Male', 3500, 'India')  
Insert Into Employees Values ('Areeha', 'Female', 5000, 'UK')  
Insert Into Employees Values ('Raza', 'Male', 6500, 'UK')  
Insert Into Employees Values ('Eeman', 'Female', 7000, 'USA')  
Insert Into Employees Values ('Faseeh', 'Male', 5500, 'UK')  
Insert Into Employees Values ('Hassan', 'Male', 5000, 'USA');
go

Select *
From Employees
go

/**
1: show the total salaries of individual countries
2: show the total salaries by gender
3: show the highest salaries 
4: show the total number of records in the table 
5: show the lowest salary in the table 
6: show the average salary in the table
7: show the total salaries of individual countries
**/

--1: show the total salaries of individual countries

SELECT COUNTRY, SUM(SALARY) AS TotalSalaries
FROM Employees
GROUP BY COUNTRY;
go

--2: show the total salaries by gender

SELECT GENDER, SUM(SALARY) AS TotalSalaries
FROM Employees
GROUP BY GENDER;
go

--3: show the highest salaries 

SELECT MAX(SALARY) AS HighestSalary
FROM Employees;

--4: show the total number of records in the table 

SELECT COUNT(*) AS TotalRecords
FROM Employees;

--5: show the lowest salary in the table 
SELECT MIN(SALARY) AS LowestSalary
FROM Employees;


--6: show the average salary in the table
SELECT AVG(SALARY) AS AverageSalary
FROM Employees;

--7: show the total salaries of individual countries

SELECT COUNTRY, SUM(SALARY) AS TotalSalaries
FROM Employees
GROUP BY COUNTRY;
go

Select *
From Employees


/**Assignment 2: Create --Store Procedure using Business table
Assignment 2: Create --Store Procedure using EmployeeInfo table
Assignment 3: Create --Store Procedure using CompanyInfo table
Assignment 4:--data flow (case statement)
**/

---Create a view for Noble

Create view vwNoble as 
Select *
From Noble
Go

Select *
From vwNoble

--Create a view for EmployeeInfo

Create view vwEmployeeInfo as
Select *
From EmployeeInfo
go

Select *
From vwEmployeeInfo


--How to create a Store proceedure EmployeeInfo
USE EmadeDev
GO
CREATE PROCEDURE spEmployeeInfo
AS
BEGIN

SELECT * 
FROM EmployeeInfo

END
--How to run store procedure EmployeeInfo
EXEC spEmployeeInfo

--How to create store procedure CompanyInfo
USE EmadeDev
GO
CREATE PROCEDURE spCompanyInfo
AS
BEGIN

SELECT * 
FROM CompanyInfo

END

--How to run store procedure CompanyInfo
EXEC spCompanyInfo

--How to create store procedure Business
USE EmadeDev
GO
CREATE PROCEDURE spBusiness
AS
BEGIN

SELECT * 
FROM Business

END

--How to run store procedure Business
EXEC spBusiness





--Create a view for Business

Create view vwBusiness as
Select *
From Business 

--How to create store procedure 
USE EmadeDev
GO
CREATE PROCEDURE spBusiness
AS
BEGIN

SELECT * 
FROM Business

--Create a view for CompanyInfo

Create view vwCompanyInfo as
Select *
From CompanyInfo
go

Select *
From CompanyInfo


--Assignment 4:--data flow (case statement)
/**
if the year is 2000 show as good
if the year is 2004, 2008 show as better 
if the year is below 2024 and above 2008 show as best
anything else show as perfect.
show result in a new column and name it year status
**/






