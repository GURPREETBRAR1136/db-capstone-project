CREATE DEFINER=`db_project`@`%` PROCEDURE `CheckBooking`(IN BookingDate DATE,IN TableN INT)
BEGIN
SELECT CONCAT("Table ", TableN ," is already Booked") AS 'Booking status' 
FROM bookings 
WHERE Booking_date = BookingDate AND TableNo =TableN ;

END