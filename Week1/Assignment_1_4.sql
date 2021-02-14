select shipped_date - order_date AS "Days_To_Ship" from om.orders
order by customer_id, "Days_To_Ship"