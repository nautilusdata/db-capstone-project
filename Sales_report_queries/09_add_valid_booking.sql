CREATE DEFINER=`admin1`@`%` PROCEDURE `AddValidBooking`(IN booking_date DATE, IN table_number INT, IN customer_id INT)
BEGIN
DECLARE msg VARCHAR(100);
START TRANSACTION;
INSERT INTO Bookings (BookingDate, TableNumber, CustomerID) VALUES (booking_date, table_number, customer_id);
# comparator is > 1 because the new data is already inserted and if the data matches, we have 2 cases, not 1 
IF (SELECT COUNT(*) FROM Bookings WHERE BookingDate = booking_date AND TableNumber = table_number) > 1 THEN
        SET msg = CONCAT('Table ',table_number,' is already booked - booking cancelled');
        ROLLBACK;
ELSE
        COMMIT;
END IF;
SELECT msg AS "Booking status";
END