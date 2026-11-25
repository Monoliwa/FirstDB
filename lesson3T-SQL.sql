--insert into Students
--values('Petr','Petrovkiy','2007-05-11','Petr@gmail.com',3,2024)

--create table TempStudent(
--	LName nvarchar(50),
--	FName nvarchar(50),
--	DirthDate date
--	);
--insert into TempStudent(LName,FName,DirthDate)
--select s.LastName,s.FirstName,s.BirthDate
--from Students as s
--where MONTH(s.BirthDate)>4

--select *
--from Students
----select *
----from TempStudent
--select LastName,FirstName,Email
--into StudentWithEmail
--from Students as s
--where Year(s.BirthDate)>2003


--UPDATE tableName
--SET columnName1=value1,columnName2=value2
--where condition;
------критически важно без where изменяются все строки таблицы
--select *
--from Teachers
--update Teachers
--set Salary=81500
--where TeacherID=2

--select *
--from Students

--update Students
--set LastName='Petrovskiy'
--where StudentID=4


--update Students
--set LastName='Karamzina'
--where StudentID=4

--select *
--from Students

--insert into Students
--values('Petr','Petrovkiy','2007-05-11','Petr@gmail.com',3,2024)

--delete from Students
--where StudentID=8