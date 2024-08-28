SELECT 
    c.date_date,
    ROUND(operational_margin - ads_cost,2) AS ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    ads_impression,
    ads_click
FROM {{ref("int_campaigns_day")}} c
JOIN {{ref("finance_days")}} f
ON c.date_date = f.date_date
ORDER BY date_date DESC