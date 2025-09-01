--1. Создать нового пользователя PostgreSQL (роль) с именем hr_user и
--простым паролем.
--2. Предоставить hr_user право SELECT на таблицу Employees.
CREATE USER hr_user WITH PASSWORD 'qwerty1';

GRANT SELECT ON TABLE Employees TO hr_user;