--Найдите клиентов, которые:
--1. Сделали хотя бы 2 заказа (любых),
--2. Имеют хотя бы одну доставку со статусом 'Delivered'.
--Для каждого такого клиента выведите:
--● full_name (имя + фамилия),
--● общее количество заказов,
--● общую сумму заказов,
--● страну проживания.
SELECT 
CONCAT(first_name, ' ', last_name) AS full_name,
country,
count(*) AS total_orders,
SUM(orders.amount) AS  total_amount
FROM customers

INNER JOIN shippings
ON shippings.customer = customers.customer_id

INNER JOIN Orders
ON Orders.customer_id = customers.customer_id

WHERE status = 'Delivered'

GROUP BY customers.customer_id

HAVING count(*) >= 2 