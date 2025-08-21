--Сколько активных договоров по типам недвижимости и какой месячный доход
SELECT
TO_CHAR(date_start, 'YYYY-MM') AS YearMonth,--форматирует дату в год месяц
property_type,
SUM(monthly_payment) AS TotalIncome,--сумма ежемесячных платежей
COUNT(agreement_sk) AS ActiveContracts-- количество недвижимости
FROM fact_agreement 
JOIN dim_real_estate ON fact_agreement.real_estate_sk = dim_real_estate.real_estate_sk
JOIN dim_date ON dim_date.date_sk = fact_agreement.date_sk
GROUP BY TO_CHAR(date_start, 'YYYY-MM'), property_type
ORDER BY YearMonth, TotalIncome DESC;--сортировка по убыванию TotalIncome и результат ао дате