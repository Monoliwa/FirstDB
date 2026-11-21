--select Su.Credits
--From Subjects as Su

--select 
--Su.SubjectName as [имя предмета],
--Su.Credits as [часы]
--from Subjects as Su
--where Su.Credits>3

--select *
--From Students

--select S.StudentID,
--s.LastName as [фамилия],
--s.BirthDate as [дата рождения],
--s.Email as [почта]
--from Students as S
--where len(s.LastName)!<7

--select s.LastName,s.FirstName,s.BirthDate
--from Students as S
--where MONTH(s.BirthDate)>=3 and 
--MONTH(s.BirthDate)<=11

--select s.LastName,s.FirstName,s.BirthDate
--from Students as S
--where Year(s.BirthDate)>=2004 and 
--Year(s.BirthDate)<=2005

--select s.LastName,s.FirstName,s.BirthDate
--from Students as S
--where Day(s.BirthDate)>=10 and 
--Day(s.BirthDate)<=20

--select s.LastName,s.FirstName,s.BirthDate
--from Students as S
--where year(S.BirthDate)%2=0 or  day(S.BirthDate)%2!=0

--select s.LastName,s.FirstName,s.BirthDate
--from Students as S
--where year(S.BirthDate)%2=0 or  day(S.BirthDate)%2<>0
--select  *
--from Teachers as t
--where t.Salary is null

--select s.LastName,s.FirstName,s.BirthDate
--from Students as s
--where not s.FirstName='Anna'
--select *
--from Teachers as t
--where t.Salary is not null

--select * 
--from Teachers as t
--order by t.FirstName

--select t.FirstName,t.LastName,t.Salary*1.1 as [увеличили зп на 10%]
--from Teachers as t
--where t.Salary<=70000

--select * 
--from Teachers as t
--order by t.Salary
--select s.LastName,s.FirstName,s.BirthDate
--from Students  as s
--order by MONTH(s.BirthDate)


--Задание 1. Фильтрация по числу и сортировка
--Цель: Отработать оператор WHERE (сравнение) и ORDER BY.
--Условие: Выведите имя (FirstName), фамилию (LastName) и зарплату (Salary) всех преподавателей из таблицы Teachers, у которых зарплата больше 60000.
--Отсортируйте результат по убыванию зарплаты (Salary).
--Ожидаемый результат: Список преподавателей с высокой зарплатой, начиная с самого высокооплачиваемого.

--select t.LastName,t.FirstName,t.Salary
--from Teachers as t
--where t.Salary>60000
--order by t.Salary DESC

--Задание 2. Логическое И (AND)
--Цель: Отработать объединение двух условий через AND.
--Условие: Выведите название предмета (SubjectName) и количество кредитов (Credits) из таблицы Subjects для тех предметов, у которых количество кредитов 
--от 3 до 5 включительно (то есть >= 3 И <= 5).
--Ожидаемый результат: Список предметов, подходящих под этот диапазон.

--select SubjectName,S.Credits
--from Subjects as s
--where s.Credits>=3 and s.Credits<=5

--Задание 3. Логическое ИЛИ (OR) и функция MONTH
--Цель: Отработать оператор OR и работу с датами (из лекции).
--Условие: Выведите фамилию (LastName), имя (FirstName) и дату рождения (BirthDate) студентов из таблицы Students, 
--которые родились в январе (месяц 1) ИЛИ в декабре (месяц 12).
--Подсказка: используйте функцию MONTH(BirthDate).

--select St.LastName,St.FirstName,St.BirthDate
--from Students as St
--where MONTH(St.BirthDate)=1 or MONTH(St.BirthDate)=12

--Задание 4. Проверка на NULL и NOT
--Цель: Отработать операторы IS NOT NULL и NOT (из лекции).
--Условие: Выведите имя (FirstName), фамилию (LastName) и должность (Position) из таблицы Teachers. В результат должны попасть только те преподаватели,
--у которых указана должность (то есть Position не пустая), и при этом их фамилия не равна "Смирнов" (LastName <> 'Смирнов' или NOT LastName = 'Смирнов').
--select t.FirstName,t.LastName,t.Position
--from Teachers as t
--where t.Position is not null and t.LastName<>'Smirnov'

--Задание 5. Фильтрация по тексту и сортировка по двум столбцам
--Цель: Отработать функцию LEN, сортировку по нескольким столбцам и фильтрацию.
--Условие: Выведите фамилию (LastName), имя (FirstName) и год поступления (EnrollmentYear) студентов из таблицы Students, у которых длина имени (LEN(FirstName))
--не больше 5 символов (как в примере из лекции). Отсортируйте результат сначала по году поступления по убыванию (DESC), а затем по фамилии по возрастанию (ASC).

--select St.LastName,St.FirstName,St.EnrollmentYear
--from Students as St
--where (LEN(St.FirstName))!>5
--order by St.EnrollmentYear DESC,St.LastName ASC 

--select t.LastName,t.FirstName,t.Position
--from Teachers as t
--where t.FirstName='Alexey' or t.FirstName='Dmitry' or t.FirstName='Elena'

--select t.LastName,t.FirstName,t.Position
--from Teachers as t
--where t.FirstName in('Alexey','Dmirty','Elena')

--select *
--from Students as s
--where s.BirthDate>='2004-11-20' and s.BirthDate<='2005-05-15'

--select *
--from Students as s
--where s.BirthDate between '2004-11-20' and '2005-05-15'

--select *
--from Students as s
--where s.LastName not between 'E' and 'S'

--select *
--from Students as s
--where
----перечисление, ищем на А и О.а заканчиваются на а
--s.FirstName like'[AO]%' and s.FirstName like'%a'

--select *
--from Students as s
--where s.Email like '_[^f-m]%'