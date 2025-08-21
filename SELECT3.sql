--Насколько в среднем арендует разные типы недвижимости 
SELECT 
property_type,--тип
AVG(date_end - date_start)--средняя продолжительность договора в днях
FROM dim_real_estate
JOIN fact_agreement 
ON dim_real_estate.real_estate_sk = fact_agreement.real_estate_sk
JOIN dim_date
ON dim_date.date_sk = fact_agreement.date_sk
GROUP BY property_type;-- Группируем по типу
