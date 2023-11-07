CREATE DEFINER=`db_project`@`%` PROCEDURE `Update Booking`(IN id INT ,IN BookingDate DATE )
BEGIN
UPDATE bookings
SET Booking_date = BookingDate
WHERE BookingID = id;
SELECT CONCAT("Booking ", id , "updated") AS Confirmation ;
END