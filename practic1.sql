--Задание 1.1 (Явное указание столбцов)
--Добавьте нового студента в таблицу Students. Укажите только обязательные поля (например, 
--имя, фамилию, дату рождения и год поступления). Email оставьте пустым (NULL).
select *
from Students
insert into Students
values('Ann','Milan','2005-02-11',null,1,2021)

--Задание 1.2 (Без указания столбцов)
--Добавьте нового преподавателя в таблицу Teachers, строго соблюдая порядок столбцов,
--который показан на вашей схеме. Придумайте ему должность и зарплату.
select *
from Teachers
insert into Teachers
values ('Max','Ilenko',2,'Professor',70000)

--Создайте временную таблицу TempSubjects с полями SubjectName и Credits. Заполните её 
--только теми предметами из таблицы Subjects, у которых количество кредитов (Credits) больше 3.
create table TempSubjects(
SubjectName nvarchar(100),
Credits int
);
insert into TempSubjects(SubjectName,Credits)
select SubjectName,Credits
from Subjects
where Credits>3
select *
from TempSubjects

--Задание 2.1
--Создайте новую таблицу с именем MathTeachers, в которую скопируйте данные (FirstName, LastName, Salary) 
--о всех преподавателях, у которых в поле Position указано «Профессор» (или 
--любая другая должность, которая есть в вашей таблице). Создайте таблицу с помощью оператора SELECT INTO.
select FirstName,LastName,Salary
into MathTeachers
from Teachers
where Position='Professor'

--Задание 3.1
--Ректорат решил поощрить преподавателей. Напишите запрос, который повысит зарплату 
--(Salary) на 15% всем преподавателям, чья текущая зарплата меньше 40 000.
select *
from MathTeachers
UPDATE Teachers 
set Salary = Salary * 1.15 
where Salary<60000

select *
from Students
update Students
set FacultyID=1
where year(BirthDate)<2003 

select *
from Grades
select *
from Grades
where StudentID=2
update Grades 
set ExamDate=GETDATE()
where StudentID=2

select *
from Grades
delete from Grades
where GradeValue=2

select *
from Subjects
delete from Grades
WHERE SubjectID NOT IN (SELECT SubjectID FROM Grades)


я удалила под 4 индексом, так как 5 у меня не было
select *
from Students
select *
from Grades
delete from Grades
where StudentID=4
delete from Students
where StudentID=4



select *
from Students
insert into Students
values('Mari','Kert','2008-12-12',null,3,2026)

select *
from Teachers
insert into Teachers
values ('Nick','Don',3,'Associate Professor',95000)

select *
from TempStudents
create table TempStudents(
LastName nvarchar(100),
FirstName nvarchar(100)
);
insert into TempStudents (LastName, FirstName)
select LastName, FirstName
from Students
WHERE EnrollmentYear=2023

create table YoungStudents(
FirstName nvarchar(100),
LastName nvarchar(100),
BirthDate date
);
insert into YoungStudents (FirstName, LastName, BirthDate)
select FirstName, LastName, BirthDate
from Students as s
where Year(s.BirthDate)>2004

select *
from Teachers
update Teachers
set Salary = Salary * 1.10 
where Salary<50000

select *
from Students
update Students
set FacultyID=3
where EnrollmentYear<=2020

select *
from Grades
where StudentID=1 and SubjectID=2
update Grades
set GradeValue=5
where StudentID=1 and SubjectID=2

select *
from Grades
where GradeValue=5
delete from Grades
where GradeValue=5

select *
from Teachers
delete from Teachers
where TeacherID not in (
select TeacherID 
from Subjects 
where TeacherID is not null);

select *
from Students
select *
from Grades
delete from Grades
where StudentID=3
delete from Students
where StudentID=3