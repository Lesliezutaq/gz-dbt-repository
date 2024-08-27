SELECT 
    s.orders_id,
    s.date_date,
    s.revenue,
    s.quantity,
    p.purchase_price,
    ROUND(CAST(p.purchase_price AS FLOAT64)*s.quantity,2) AS purchase_cost,
    ROUND(s.revenue - CAST(p.purchase_price AS FLOAT64)*s.quantity,2) AS margin 
FROM {{ ref("stg_raw__sales") }} s
LEFT JOIN {{ ref("stg_raw__product") }} p
ON s.products_id = p.products_id
ORDER BY date_date

