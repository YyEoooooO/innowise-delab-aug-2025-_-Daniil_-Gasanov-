--Выведите список доставок со статусом и именем клиента.
SELECT status, first_name, last_name
FROM customers
INNER JOIN shippings
ON customers.customer_id = shippings.customer