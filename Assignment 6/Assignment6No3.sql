/*Colleen Overbaugh Spring 2021
This script calls a stored function called discount_price and calculates the 
discount price of an item in the order_items table. At the end of the code, you can use
WHERE item_id to choose any number/parameter to see what the discounted price would be
for that item number.*/
DROP FUNCTION IF EXISTS discount_price;

DELIMITER //
CREATE FUNCTION discount_price
(
item_id_param INT
)
RETURNS DECIMAL(9,2)
BEGIN
DECLARE discount_price_var DECIMAL(9,2);
SELECT item_price - discount_amount
INTO discount_price_var
FROM order_items
WHERE item_id = item_id_param;
RETURN discount_price_var;
END//

DELIMITER ;

SELECT 
    discount_price(item_id) AS discount_price
FROM
    order_items
WHERE
    item_id = 2;