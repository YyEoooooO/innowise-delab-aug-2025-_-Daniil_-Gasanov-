--Найдите всех клиентов, которые сделали заказ с максимальной суммой.
SELECT first_name, last_name, amount
FROM customers
INNER JOIN orders
ON orders.customer_id = customers.customer_id
WHERE amount = (SELECT MAX(amount) FROM orders)

