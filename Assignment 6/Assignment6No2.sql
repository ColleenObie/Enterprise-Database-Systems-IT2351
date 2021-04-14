/*Colleen Overbaugh Spring 2021
This script creates a procedure then inserts a new category. It displays a message
for a successful insert and a failed insert.*/

DROP PROCEDURE IF EXISTS insertCategory;

DELIMITER //
CREATE PROCEDURE insertCategory()
BEGIN
DECLARE duplicate_entry_for_key TINYINT DEFAULT FALSE;

DECLARE CONTINUE HANDLER FOR 1062
SET duplicate_entry_for_key = TRUE;

INSERT INTO categories VALUES (DEFAULT, 'Guitars');

IF duplicate_entry_for_key = TRUE THEN
SELECT '1 row was inserted' AS message;
ELSE
SELECT 'Row was not inserted - dupl icate entry' AS message;
END IF;
END//

call insertCategory();