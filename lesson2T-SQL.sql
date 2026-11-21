--Задача 1. Ключевое слово IN
--Цель: Научиться заменять длинную цепочку OR на оператор IN.
--Условие: Выведите фамилию (LastName), имя (FirstName) и год поступления (EnrollmentYear) из таблицы Students. 
--В результат должны попасть только те студенты, которые поступили в 2021, 2023 или 2024 году. Используйте оператор IN.
select *
from Students as s
where s.EnrollmentYear in ('2021','2023','2024')

--Задача 2. Ключевое слово BETWEEN
--Цель: Научиться фильтровать данные по диапазону (числа и даты).
--Условие: В таблице Teachers есть столбец с зарплатой (Salary). Выведите фамилию (LastName), имя (FirstName) и зарплату 
--для тех преподавателей, у которых зарплата находится в диапазоне от 50 000 до 80 000 включительно. Используйте оператор BETWEEN.

select *
from Teachers as t
where t.Salary between 50000 and 80000

--Задача 3. Ключевое слово LIKE
--Цель: Научиться искать по шаблону (текстовый поиск).
--Условие: Выведите фамилию (LastName), имя (FirstName) и email (Email) из таблицы Students. Найдите всех студентов,
--чья электронная почта начинается на букву "a" (например, anna@example.com). Используйте оператор LIKE.

--select *
--from Students as s
--where s.Email like 'a%'

--Задание 1. Базовый SELECT и FROM
--Условие: Выведите имя (FirstName), фамилию (LastName) и адрес электронной почты (Email) всех студентов из таблицы Students. Не используйте символ *.

select s.FirstName,s.LastName,s.Email
from Students as s

--Задание 2. Псевдонимы (AS) и конкатенация (+)
--Условие: Выведите из таблицы Teachers полное имя преподавателя в формате "Имя Фамилия" (через пробел) и назовите этот новый столбец FullName. Дополнительно выведите его должность 
--(Position).

select t.FirstName+' '+t.LastName as [FullName] 
from Teachers as t
--Задание 3. Сортировка (ORDER BY)
--Условие: Выведите фамилию (LastName), имя (FirstName) и зарплату (Salary) всех преподавателей из таблицы Teachers. Отсортируйте результат по зарплате по убыванию (от самой высокой к самой низкой).
select t.FirstName,t.LastName,t.Salary
from Teachers as t
order by t.Salary DESC

--Задание 4. Фильтрация по числу (WHERE)
--Условие: Выведите название предмета (SubjectName) и количество кредитов (Credits) из таблицы Subjects. Оставьте только те предметы, у которых количество кредитов 
--больше 3.

select s.SubjectName, s.Credits
from Subjects as S
where s.Credits>3
--Задание 5. Логическое И (AND)
--Условие: Выведите фамилию (LastName), имя (FirstName) и год поступления (EnrollmentYear) из таблицы Students. Найдите студентов, которые поступили в 2022 году и
--при этом учатся на факультете с FacultyID = 1.

select s.FirstName,s.LastName,s.EnrollmentYear
from Students as s
where s.EnrollmentYear=2022 and s.FacultyID=1
--Задание 6. Логическое ИЛИ (OR)
--Условие: Выведите фамилию (LastName) и должность (Position) из таблицы Teachers. Найдите преподавателей, которые занимают должность 'Профессор' (или 'Professor')
--ИЛИ получают зарплату (Salary) больше 80000.
select t.LastName,t.Position
from Teachers as t
where t.Position='Professor' or t.Salary>80000
--Задание 7. Ключевое слово IN
--Условие: Выведите фамилию (LastName) и год поступления (EnrollmentYear) из таблицы Students. Оставьте только тех студентов, которые поступили в 2021, 2023 или 2024
--году. Используйте оператор IN.
select s.LastName,s.EnrollmentYear
from Students as s
where s.EnrollmentYear in('2021','2023','2024')

--Задание 8. Ключевое слово BETWEEN
--Условие: Выведите название предмета (SubjectName) и количество кредитов (Credits) из таблицы Subjects. Найдите предметы, у которых количество кредитов находится в 
--диапазоне от 2 до 4 включительно. Используйте оператор BETWEEN.
select s.SubjectName, s.Credits
from Subjects as S
where s.Credits between '2' and '4'
--Задание 9. Ключевое слово LIKE
--Условие: Выведите фамилию (LastName), имя (FirstName) и email (Email) из таблицы Students. Найдите всех студентов, чья электронная почта начинается на букву "a" 
--(например, anna@example.com). Используйте оператор LIKE.
select s.LastName,s.FirstName,s.Email
from Students as s
where s.Email like 'a%'

--Задание 10. Комбинированное задание (LIKE + ORDER BY)
--Условие: Выведите фамилию (LastName), имя (FirstName) и email (Email) из таблицы Students. Найдите всех студентов, чья фамилия начинается на букву "S". 
--Отсортируйте результат по фамилии по возрастанию (от А до Я).
select s.LastName,s.FirstName,s.Email
from Students as s
where s.LastName like 'S%'
order by s.LastName ASC