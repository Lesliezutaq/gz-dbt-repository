SELECT 
    DATE_TRUNC(date_date, MONTH) AS datemonth,
    ROUND(SUM(ads_margin),2) AS ads_margin,
    ROUND(AVG(average_basket),2) AS average_basket,
    ROUND(SUM(operational_margin),2) AS operational_margin,
    SUM(ads_cost) AS ads_cost,
    SUM(ads_impression) AS ads_impression,
    SUM(ads_impression) AS ads_impression,
    SUM(ads_click) AS ads_click
FROM {{ref("finance_campaigns_day")}} 
GROUP BY datemonth