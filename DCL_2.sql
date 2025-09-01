--3. Тест: В новой сессии подключиться как hr_user и попытаться
--выполнить SELECT * FROM Employees;. (Должно сработать).
--4. Как hr_user, попытаться выполнить INSERT нового сотрудника в
--Employees. (Должно завершиться неудачей).
--5. Как пользователь-администратор, предоставить hr_user права
--INSERT и UPDATE на таблицу Employees.
--6. Тест: Как hr_user, попробовать выполнить INSERT и UPDATE
--сотрудника. (Теперь должно сработать).

GRANT INSERT, UPDATE ON TABLE Employees TO hr_user;

GRANT USAGE ON SEQUENCE employees_employeeid_seq TO hr_user;