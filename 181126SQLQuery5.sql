----Создание таблиц--
--create table Faculties(
--FacultyID int primary key identity (1,1),
--FacultyName nvarchar(100) not null,
--DekanName nvarchar(100)
--);
--go
----Таблица Преподавателей
--create table Teachers (
--TeacherID int primary key identity(1,1),--первичный ключ
--FirstName nvarchar(50) not null,
--LastName nvarchar(50) not null,
--FacultyID int not null,--вторичный ключ
--Position nvarchar(50),
--Salary decimal(10,2),
--foreign key(FacultyID) references Faculties(FacultyID)
----вторичный ключ берем из FacultiesID
--);
--go
----Таблица студентов--
--create table Students (
--StudentID int primary key identity(1, 1), --первичный ключ
--FirstName nvarchar(50) not null,
--LastName nvarchar(50) not null,
--BirthDate date,
--Email nvarchar(100),
--FacultyID int not null,
--EnrollmentYear int,
--foreign key (FacultyID) references Faculties (FacultyID)
--);
--go
----Таблица предметов
--create table Subjects (
--SubjectID int primary key identity(1, 1), --первичный ключ
--SubjectName nvarchar(50) not null,
--Credits int,
--FacultyID int not null,
--TeacherID int not null,
--foreign key (FacultyID) references Faculties (FacultyID),
--foreign key (TeacherID) references Teachers (TeacherID),
--);
--go
----Таблица оценок --
--create table Grades (
--GradeID int primary key identity (1,1),--первичный ключ
--SubjectID int not null,
--StudentID int not null,
--GradeValue int check(GradeValue between 1 and 5), --Оценка от 1 до 5
--ExamDate date,
--foreign key (SubjectID) references Subjects(SubjectID),
--foreign key (StudentID) references Students (StudentID)
--);
--go
--insert into Faculties(FacultyName , DekanName) values
--('Information Technology', 'Ivanov I.I.'),
--('Economics', 'Petrov P.P.'),
--('Law', 'Sidorov S.S.');
--go
--insert into Teachers (FirstName,LastName,FacultyID,Position,Salary)values
--('Alexey', 'Smirnov', 1, 'Professor', 80000.00),
--('Maria', 'Kuznetsova', 1, 'Associate Professor', 60000.00),
--('Dmitry', 'Volkov', 2, 'Associate Professor', 55000.00),
--('Elena', 'Sokolova', 3, 'Professor', 85000.00);
--go
--insert into Students(FirstName,LastName,BirthDate,Email,FacultyID,EnrollmentYear) values
--('Ivan', 'Ivanov', '2005-05-15', 'ivan@example.com', 1, 2023),
--('Anna', 'Smirnova', '2004-11-20', 'anna@example.com', 1, 2022),
--('Petr', 'Sidorov', '2005-01-10', 'petr@example.com', 2, 2023),
--('Olga', 'Kozlova', '2003-07-08', 'olga@example.com', 3, 2021);
--go
--insert into Subjects (SubjectName, Credits, TeacherID, FacultyID)values
--('Databases', 4, 1, 1),
--('C++ Programming', 5, 2, 1),
--('Microeconomics', 3, 3, 2),
--('Civil Law', 4, 4, 3);
--go
--insert into Grades (StudentID,SubjectID,GradeValue,ExamDate)values
--(1, 1, 5, '2024-01-15'), -- Ivan, Databases, 5
--(1, 2, 4, '2024-01-20'), -- Ivan, C++ Programming, 4
--(2, 1, 4, '2024-01-16'), -- Anna, Databases, 4
--(2, 2, 5, '2024-01-21'), -- Anna, C++ Programming, 5
--(3, 3, 3, '2024-01-18'), -- Petr, Microeconomics, 3
--(4, 4, 5, '2024-01-19'); -- Olga, Civil Law, 5
--go
select*
from Faculties
select*
From Teachers
select*
from Students
select*
from Subjects
select*
from Grades
select*
from Faculties

--select 'Student:' +LastName+' year enrollment: '+
--cast (EnrollmentYear as nvarchar(50)) as [year enrollmen] 
--from Students;

--select 'Student: '+LastName+' year enrollment: '+
--convert (nvarchar(50), EnrollmentYear) as [year enrollmen]
--from Students;

--select top 2 T.LastName+' '+T.FirstName as [Teacher name: ],T.Position
--From Teachers as T;

--select top 20 percent T. LastName, T.FirstName, T. Salary 
--from Teachers as T

--select top 50 percent T. LastName, T.FirstName, T. Salary 
--from Teachers as T

--select distinct s.EnrollmentYear
--from Students as s

select T.FirstName,T.LastName, T.Position
from Teachers as T;

select S.FirstName+' '+ LastName as FullName,S.EnrollmentYear
from Students as S;

select T.LastName+' '+cast(T.Salary * 1.1 as nvarchar(20))
from Teachers as T;

select top 2 SJ.SubjectName,SJ.Credits
from Subjects as SJ;

select distinct S.FacultyID
from Students as S;