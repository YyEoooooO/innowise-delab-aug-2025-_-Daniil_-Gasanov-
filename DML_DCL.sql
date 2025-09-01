--1. Увеличить Salary всех сотрудников в отделе 'HR' на 10%.
--2. Обновить Department любого сотрудника с Salary выше 70000.00
--на 'Senior IT'.
--3. Удалить всех сотрудников, которые не назначены ни на один проект в
--таблице EmployeeProjects. Подсказка: Используйте подзапрос NOT
--EXISTS или LEFT JOIN
--4. Вставить новый проект и назначить на него двух существующих
--сотрудников с определенным количеством HoursWorked в
--EmployeeProjects, и все это в одном блоке BEGIN/COMMIT.

UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'HR';

UPDATE Employees
SET  Department = 'Senior IT'
WHERE Salary > 70000.00;

DELETE FROM Employees
WHERE NOT EXISTS (
SELECT 1 
FROM EmployeeProjects
WHERE EmployeeProjects.EmployeeID = Employees.EmployeeID
);

BEGIN;

INSERT INTO Projects (ProjectName, Budget, StartDate, EndDate) 
VALUES ('NBA', 300000.00, '2025-08-18', '2025-08-21');

INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
VALUES
(2, (SELECT MAX(ProjectID) FROM Projects), 170),
(1, (SELECT MAX(ProjectID) FROM Projects), 110);
--Короче ProjectID создаётся автоматически поэтому id нового проекта будет максимальным 
--Я не понимаю почему этот код без BEGIN/COMMIT работает,а с ним не работает 
COMMIT;