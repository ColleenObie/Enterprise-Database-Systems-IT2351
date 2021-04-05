1. ) The categories table primary key category_id shares the foreign key category_id for the products table. The addresses table foreign key customer_id shares with the customers table primary key customer_id. The products table primary key product_id shares with order_items foreign key product_id. The orders table primary key order_id shares with the order_items foreign key order_id. The customers table primary key customer_id is the same as the orders table foreign key customer_id.
The products to order_items table has one to many cardinality because the primary key matches the foreign key. The customers table and orders table has one to many cardinality because the customer_id primary key is shares with the customer_id foreign key.

categories - primary category_id
products – primary product_id, foreign category_id
order_items – primary item_id, foreign order_id, product_id
orders – primary order_id, foreign customer_id
addresses – primary address_id, foreign customer_id
customers – primary customer_id
administrators – primary admin_id
