--Посчитайте общее количество заказов и среднюю сумму по каждому товару
SELECT item, count(*), avg(amount) as avg_amount
FROM orders
GROUP BY item