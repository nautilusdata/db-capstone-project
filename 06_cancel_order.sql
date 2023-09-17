CREATE DEFINER=`admin1`@`%` PROCEDURE `CancelOrder`(IN o_id INT)
BEGIN
DECLARE msg VARCHAR(100);
DELETE FROM Orders WHERE OrderID=o_id;
SET msg = CONCAT('Order ',o_id, ' is cancelled');
SELECT msg AS Confirmation;
END