--Найдите всех клиентов из страны 'USA', которым больше 25 лет.
SELECT first_name, last_name, age, country 
FROM customers 
WHERE age > 25 AND country LIKE '%US%'