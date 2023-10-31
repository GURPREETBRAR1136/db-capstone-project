CREATE DEFINER=`db_project`@`%` PROCEDURE `CancelOrder`(id INT)
BEGIN
DELETE FROM Orders WHERE OrderID = id;
SELECT CONCAT("order", id, "is cancelled") AS confirmation; 
END