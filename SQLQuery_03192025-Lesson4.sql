--Create table Students

Use EmadeDev
Create table Students (
ID int not null,
Name varchar(50) not null,
Score smallint not null);
Go

--Load table students with values 

insert into Students
values
(1, 'Simisola', 60),
(2, 'Ivan', 80),
(3, 'Metodija', 52),
(4, 'Callum', 98),
(5, 'Leia', 84),
(6, 'Aparecida', 82),
(7, 'Ursula', 69),
(8, 'Ramazan', 78),
(9, 'Corona', 87),
(10, 'Alise', 57),
(11, 'Galadriel', 89),
(12, 'Merel', 99),
(13, 'Cherice', 55),
(14, 'Nithya', 81),
(15, 'Elsad', 71),
(16, 'Liisi', 90),
(17, 'Johanna', 90),
(18, 'Anfisa', 90),
(19, 'Ryosuke', 97),
(20, 'Sakchai', 61),
(21, 'Elbert', 63),
(22, 'Katelyn', 51);
Go

Select*
from students
go

/**
We have a table with a list of students and their scores on an exam. We need to give each student a grade, and we need to do it automatically. Write a logic in which we will write the breakdown for each grade. When score is 94 or higher, the row will have the value of A. If  score is  94 gets an  A, If  score is  90 gets an  A- ,If  score is  87 gets an  B+  ,
If score is 83 gets an B, If score is 80 gets an B- , If  score is  77 gets an  C+ ,
If score is 73 gets an C, If score is  70 gets an  C- ,If  score is  67 gets an  D+ ,
If score is  60 gets an  D, if students get none of these scores, you should assign an F
Give each student a grade, which we will add in a new column named grade.
You can show the grades from highest to lowest
**/


SELECT *,
    CASE
        WHEN score >= 94 THEN 'A'
        WHEN score >= 90 THEN 'A-'
        WHEN score >= 87 THEN 'B+'
        WHEN score >= 83 THEN 'B'
        WHEN score >= 80 THEN 'B-'
        WHEN score >= 77 THEN 'C+'
        WHEN score >= 73 THEN 'C'
        WHEN score >= 70 THEN 'C-'
        WHEN score >= 67 THEN 'D+'
        WHEN score >= 60 THEN 'D'
        ELSE 'F'
    END AS grade
	FROM
    students
	ORDER BY grade DESC
	 


	Select *
	From Students

	
