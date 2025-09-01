--1. Найти ProjectName всех проектов, в которых 'Bob Johnson'
--работал более 150 часов.
--2. Увеличить Budget всех проектов на 10%, если к ним назначен хотя
--бы один сотрудник из отдела 'IT'.
--3. Для любого проекта, у которого еще нет EndDate (EndDate IS
--NULL), установить EndDate на один год позже его StartDate.
--4. Вставить нового сотрудника и немедленно назначить его на проект
--'Website Redesign' с 80 отработанными часами, все в рамках одной
--транзакции. Использовать предложение RETURNING, чтобы получить
--EmployeeID вновь вставленного сотрудника.

SELECT ProjectName
FROM Projects
JOIN EmployeeProjects
ON Projects.ProjectID  = EmployeeProjects.ProjectID
JOIN Employees
ON EmployeeProjects.EmployeeID  = Employees.EmployeeID
WHERE EmployeeProjects.EmployeeID = 2 AND HoursWorked > 150;

UPDATE Projects
SET Budget = Budget * 1.10
FROM EmployeeProjects, Employees
WHERE 
Projects.ProjectID = EmployeeProjects.ProjectID
AND EmployeeProjects.EmployeeID = Employees.EmployeeID
AND Employees.Department = 'IT';

UPDATE Projects
SET EndDate = StartDate + INTERVAL '1 year'
WHERE EndDate IS NULL;


BEGIN;

WITH inserted_employee AS (
    INSERT INTO Employees (FirstName, LastName, Department, Salary)
    VALUES ('Tyler', 'Creator', 'IT', 70000.00)
    RETURNING EmployeeID
)

INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
SELECT 
    ie.EmployeeID, 
    (SELECT ProjectID FROM Projects WHERE ProjectName = 'Website Redesign'),
    80
FROM inserted_employee ie;

COMMIT;