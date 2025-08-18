--Для каждого заказа добавьте колонку с суммой всех заказов этого клиента (используя
--оконную функцию).
SELECT *,
SUM(amount) OVER(PARTITION BY customer_id) AS  total_by_customer
FROM orders