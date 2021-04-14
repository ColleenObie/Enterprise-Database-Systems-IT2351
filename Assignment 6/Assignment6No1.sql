/********************************************************
Colleen Overbaugh Spring 2021
This script calls a stored procedure. This procedure declares a variable that counts all of
the products in the products table.
*********************************************************/

DROP PROCEDURE IF EXISTS productCount;
DELIMITER //

CREATE  procedure productCount()
BEGIN
    DECLARE count_of_20 DECIMAL(9,2);

    SELECT count(product_id) into count_of_20 FROM products;
    IF count_of_20 >= 20 THEN
        SELECT 'The number of products is greater than or equal to 20' AS message;
    ELSE
        SELECT 'The number of products is less than 20' AS message;
    END IF;
END //

DELIMITER ;
call productCount();