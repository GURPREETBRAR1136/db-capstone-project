CREATE DEFINER=`db_project`@`%` PROCEDURE `Cancel Booking`(IN id INT)
BEGIN
DELETE FROM bookings WHERE BookingID = id ;
SELECT CONCAT("Booking ", id ," is canceled" )AS Confirmation;
END