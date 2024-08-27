SELECT 
    a.orders_id,
    a.date_date,
    ROUND(a.margin+b.shipping_fee-b.logcost-CAST(b.ship_cost AS INT64),2) AS operational_margin
FROM {{ref('int_orders_margin')}} a
JOIN {{ref('stg_raw__ship')}} b
ON a.orders_id = b.orders_id
ORDER BY a.date_date DESC, a.orders_id DESC