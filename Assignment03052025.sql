--Insert records into table
Insert into Noble (Year, Subject, Winner)
Values
('1960', 'Chemistry', 'Willard.F.Libby');
go

Insert into Noble (Year, Subject, Winner)
Values
('1961', 'Literature', 'Saint-John Perse'),
('1962', 'Medicine', 'Sir Frank Macfarlane Burnet'),
('1963', 'Medicine', 'Peter Madawar');
go


--Show year 1962
Select * From Noble
Where Year='1962'
Go

--Show where subject is medicine
Select * From Noble
Where Subject='Medicine'
Go

--Show latest year in table 
SELECT Max(Year) AS HighestYear
From Noble;
go

--How to add a record in table Noble
Insert into Noble (Year, subject, winner)
Values ('2024', 'Economics', 'Null')
Go

--Show number of records
Select * From Noble
Go

--Create table called Games 
Create Table Games as
Select Year, City,
go


CREATE TABLE table_name (
Select 'Year', 'City');
go
  
  --Show the year 2004 in table Games
Insert into Games (Year, City)
Values
('2000', 'Sydney'),
('2004', 'Athens'),
('2008', 'Bejing'),
('2012', 'London');
go

--Show the year 2004 in table Games
Select * From Games
Where Year='2004'
Go

--Show where city is London in table Games
Select * From Games
Where City='London'
Go

--How to get the latest year on table Games
SELECT Max(Year) AS HighestYear
From Games;

--How to add a record for next Olympic game where city is Paris in 2024 on table Games 
Insert into Games (Year, City)
Values ('2024', 'Paris')
Go


--How to insert records into table World 
Insert into World (CountryName, Continent, Area, Population, Gdp)
Values
('Afghanistan', 'Asia', '652230', '25500100', '20343000000'),
('Albania', 'Europe', '28748', '2831741', '12960000000'),
('Algeria', 'Africa', '2381741', '37100000', '188681000000'),
('Andorra', 'Europe', '468', '78115', '3712000000'),
('Angola', 'Africa', '1246700', '20609294', '100990000000');
Go

--Show area of 468 table world
Select * From World
Where Area='468'
Go

--Show where county is Angola on table World
Select * From World
Where CountryName='Angola'
Go

--Show country with the Lowest Gdp on table World
SELECT Min(Gdp) AS LowestGdp
From World;
go

--How to create a view vwlowGdpCountries this should only include record with the lowest GDP and exclud the rest on table World 
Create View [vwlowGdpCountries] As
SELECT Min(Gdp) AS LowestGdp
From World;
go

--Show number of record in table World
Select * From Games
Go






