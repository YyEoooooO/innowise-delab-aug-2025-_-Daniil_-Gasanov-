--1. Создать новую таблицу с именем Departments со столбцами:
--DepartmentID (SERIAL PRIMARY KEY), DepartmentName
--(VARCHAR(50), UNIQUE, NOT NULL), Location (VARCHAR(50)).
--2. Изменить таблицу Employees, добавив новый столбец с именем
--Email (VARCHAR(100)).
--3. Добавить ограничение UNIQUE к столбцу Email в таблице
--Employees, предварительно заполнив любыми значениями
--4. Переименовать столбец Location в таблице Departments в
--OfficeLocation.

CREATE TABLE Departments(
DepartmentID SERIAL PRIMARY KEY, 
DepartmentName VARCHAR(50) UNIQUE NOT NULL, 
Location VARCHAR(50)
);

ALTER TABLE Employees ADD COLUMN Email VARCHAR(100);

UPDATE Employees SET Email = 
    CASE EmployeeID
        WHEN 1 THEN 'alsm@gmail.com'
        WHEN 2 THEN 'bojo@gmail.com'
        WHEN 3 THEN 'chbr@gmail.com'
        WHEN 5 THEN 'evda@gmail.com'
		WHEN 12 THEN 'ivco@gmail.com'
		WHEN 13 THEN 'kojo@gmail.com'
	END;

ALTER TABLE Employees ADD CONSTRAINT UQ_Email UNIQUE (Email);

ALTER TABLE Departments RENAME COLUMN Location TO OfficeLocation;