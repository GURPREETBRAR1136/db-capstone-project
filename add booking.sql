CREATE DEFINER=`db_project`@`%` PROCEDURE `AddBooking`(IN Booking_id int, IN CustID INT,IN booking_date DATE, IN Table_No int)
BEGIN
INSERT INTO bookings(BookingID , TableNo , CustomerID, Booking_date)
VALUES(Booking_id, Table_No, CustID, booking_date);
SELECT CONCAT("NEW Booking  added ") AS Confirmation FROM bookings WHERE BookingID = Booking_id;
END