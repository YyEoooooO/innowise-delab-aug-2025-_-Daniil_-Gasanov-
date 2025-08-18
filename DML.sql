--1. Вставить двух новых сотрудников в таблицу Employees.
--2. Выбрать всех сотрудников из таблицы Employees.
--3. Выбрать только FirstName и LastName сотрудников из отдела 'IT'.
--4. Обновить Salary 'Alice Smith' до 65000.00.
--5. Удалить сотрудника, чья LastName — 'Prince'.
--6. Проверить все изменения, используя SELECT * FROM Employees;.
INSERT INTO Employees(FirstName, LastName, Department, Salary)
VALUES
('Ivan', 'Coocymber', 'Finance', 45000.00),
('Kobe', 'Jordan', 'IT', 65000.00);

SELECT * FROM Employees;

SELECT FirstName, LastName
FROM Employees
WHERE Department = 'IT';

UPDATE Employees
SET Salary = 65000.00
WHERE FirstName = 'Alice' AND LastName = 'Smith';

DELETE FROM EmployeeProjects 
WHERE EmployeeID = (SELECT EmployeeID FROM Employees WHERE LastName = 'Prince');
DELETE FROM Employees 
WHERE LastName = 'Prince';

SELECT * FROM Employees;
