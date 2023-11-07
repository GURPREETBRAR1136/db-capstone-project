CREATE DEFINER=`db_project`@`%` PROCEDURE `AddValidBooking`(BookingDate DATE, TableN int)
BEGIN
DECLARE BookingStatus VARCHAR(20);
START TRANSACTION ;
INSERT INTO bookings(BookingID, TableNo, CustomerID, Booking_date)
VALUES (6, TableN , 5 , BookingDate);
SELECT COUNT(TableNo) INTO @x FROM Bookings WHERE Booking_date = BookingDate;
SELECT @x ;
IF @x > 1 THEN 
SET BookingStatus = "Booked";
rollback;
SELECT CONCAT("Table no. ", TableN ,"is already booked ",BookingStatus , " Booking Canceled" ) AS BookingStatus;
ELSE SET BookingStatus = "Available";
COMMIT;
SELECT CONCAT("Table", " " , TableN, " ", "is", " ",BookingStatus, " ", "New Booking Added") AS BookingStatus;
END IF;

END