--Как часто запросы поступают на разные недвижимости
SELECT 
address,-- адрес
property_type,-- тип
COUNT(dim_maintenance.real_estate_sk)-- количество запросов
FROM dim_real_estate
JOIN dim_maintenance 
ON dim_real_estate.real_estate_sk = dim_maintenance.real_estate_sk
GROUP BY address, property_type -- получаем данные для каждого объекта
