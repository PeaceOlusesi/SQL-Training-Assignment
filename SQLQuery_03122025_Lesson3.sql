Use EmadeDev

Create Table CompanyInfo (
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
COUNTRY VARCHAR(50));
Go

Select *
From CompanyInfo

--Load data into table Business 
Insert Into CompanyInfo (FIRST_NAME, LAST_NAME, COUNTRY)
Values
('Adam','Cooper','USA'),
('John','Smith','USA'),
('Mark','Allan','UK'),
('Sally','Jones','USA'),
('Steve','Brown','Canada');
Go

--Multi-line comment
/**
Show all the fields in the table Business 
1 If the Country is Canada and US then return North America as the continent
2 If the Country is UK then return Europe as the continent, name field continent
**/


Select
FIRST_NAME, 
LAST_NAME,
COUNTRY,
Case
	When COUNTRY IN ('Canada', 'USA') then 'North America'
	When COUNTRY = 'UK' then 'Europe'
	End AS 'Continent'
	From CompanyInfo;
	

	--How to create a table 
Create Table EmployeeInfo (
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
EMPLOYEES INT);
Go

Select *
From EmployeeInfo


--Load data into table Business 
Insert Into EmployeeInfo (FIRST_NAME, LAST_NAME, EMPLOYEES)
Values
('Adam','Cooper','55'),
('John','Smith','4'),
('Mark','Allan','23'),
('Sally','Jones','10'),
('Steve','Brown','15'),
('Michael','James','1');
Go


--Multi-line comment
/**
Show all the fields in the table EmployeeIno 
1 If the Employee are not more than 1 return SizeOfCompany as No Employees 
2 If the Employee are not more than 10 return SizeOfCompany as Small
3 If the Employee are not more than 50 or same as 5O then return SizeOfCompany as Medium
4 If the Employee are more than 50 then return SizeOfCompany as Large
**/


Select
FIRST_NAME, 
LAST_NAME,
EMPLOYEES,
Case
	When EMPLOYEES> 1 then 'No Employees'
	When EMPLOYEES> 10 then 'Small'
	When EMPLOYEES>= 50 then 'Medium'
	When EMPLOYEES> 50 then 'Large'
	End SizeOfCompany
	From
	EmployeeInfo;
	Go








--How to create a table 
Create Table Business (
ID INT, 
NAME VARCHAR(50),
AGE INT,
ADDRESS VARCHAR(50),
SALARY DECIMAL);
Go

Select *
From Business
Go

--Load data into table Business 

Insert Into Business (ID, NAME, AGE, ADDRESS, SALARY)
Values
(1, 'Ramesh', 32, 'Ahmedabad', 2000),
(2, 'Khilan', 25, 'Delhi', 1500),
(3, 'Kaushik', 23, 'Kota', 2000),
(4, 'Chaitali', 25, 'Mumbai', 6500),
(5, 'Hardik', 27, 'Bhopal', 8500),
(6, 'Komal', 22, 'MP', 4500),
(7, 'Muffy', 24, 'Indore', 10000);
Go

Select *
From
Business

--Multi-line comment
/**
Show all the fields in the table Business 
1 If the age of the customer is more than or equals to 25 return Senior Developer 
2 If the age of the customer is not more than 25 return intern
3 If the age of the customer is more than and equal to 25, but lower and equals to 27 return Associate Engineer 
4 If the age of the customer is lower than 25, return intern and make sure to namee the field as JobPosition
**/

Select
ID, 
NAME,
AGE,
ADDRESS,
SALARY,
Case
	When AGE> 25 then 'Senior Developer'
	When AGE< 25 then 'intern'
	When AGE>= 25 AND AGE<= 27 then 'Associate Engineer'
	End JobPosition
	From
	Business;

	Select *
	From Business

	--Multi-line comment
/**
Show all the fields in the table Business 
1 If the age of the customer is more than 30 return Gen X
2 If the age of the customer is 23,24,25 return Gen Z
3 If the age of the customer is 22, then return Gen Alpha
4 If the age of the customer is 27, return Gen Y and make sure to name the field as Generation
**/


Select
ID, 
NAME,
AGE,
ADDRESS,
SALARY,
Case
When AGE> 30 then 'Gen X'
When AGE IN (23, 24, 25) then'Gen Z'
When AGE = 22 then 'Gen Alpha'
When AGE = 27 then 'Gen Y'
End as 'Generation'
From
	Business;
Drop database CompanyInfo
go