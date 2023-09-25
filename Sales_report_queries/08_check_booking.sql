CREATE DEFINER=`admin1`@`%` PROCEDURE `CheckBooking`(IN book_date DATE, IN table_num INT)
BEGIN
    DECLARE msg VARCHAR(100);  
    IF (SELECT COUNT(*) FROM Bookings WHERE BookingDate = book_date AND TableNumber = table_num) > 0 THEN
        SET msg = CONCAT('Table ', table_num, ' is already booked');
    ELSE
        SET msg = CONCAT('Table ', table_num, ' is free! Booking set.');
    END IF;
    SELECT msg AS "Booking status";
END