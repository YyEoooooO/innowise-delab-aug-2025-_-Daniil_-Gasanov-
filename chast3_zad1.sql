--Подсчитайте количество клиентов в каждой стране.
SELECT country, count(*)
FROM customers
GROUP BY country