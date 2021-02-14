select customer_first_name, customer_last_name, CONCAT(customer_first_name, customer_last_name) AS "Name" from om.customers
order by customer_last_name, customer_first_name