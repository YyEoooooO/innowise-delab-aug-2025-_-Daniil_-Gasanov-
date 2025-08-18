--Получите список заказов вместе с именем клиента, который сделал заказ.
SELECT first_name, last_name, item, amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
