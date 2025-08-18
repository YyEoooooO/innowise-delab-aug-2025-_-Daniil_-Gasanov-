--1. Функция: Создать функцию PostgreSQL с именем
--CalculateAnnualBonus, которая принимает employee_id и
--Salary в качестве входных данных и возвращает рассчитанную
--сумму бонуса (10 % от Salary) для этого сотрудника. Используйте
--PL/pgSQL для тела функции.
--2. Использовать эту функцию в операторе SELECT, чтобы увидеть
--потенциальный бонус для каждого сотрудника.
--3. Представление (View): Создать представление с именем
--IT_Department_View, которое показывает EmployeeID,
--FirstName, LastName и Salary только для сотрудников из отдела
--'IT'.
--4. Выбрать данные из вашего представления IT_Department_View.
CREATE OR REPLACE FUNCTION CalculateAnnualBonus(
employee_id INTEGER,
Salary DECIMAL(10, 2)
)
RETURNS DECIMAL(10, 2)
LANGUAGE PLpgSQL
AS $$
BEGIN
    RETURN Salary * 0.10;
END;
$$;

SELECT *, CalculateAnnualBonus(EmployeeID, Salary)
FROM Employees;

CREATE OR REPLACE VIEW IT_Department_View AS
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    Salary
FROM 
    Employees
WHERE 
    Department = 'IT';

SELECT *
FROM IT_Department_View;