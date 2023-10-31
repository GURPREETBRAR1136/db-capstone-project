SELECT Customer.CustomerID, (SELECT CONCAT('FirstName', ' ' , 'LastName') FROM Customer ) AS 'FullName', Orders.OrderID, Orders.Total, Menu.MenuName, MenuItems.CourseName 
FROM customer INNER JOIN Bookings ON Customer.CustomerID = Bookings.CustomerID
INNER JOIN Orders ON Bookings.BookingID = Orders.BookingID
INNER JOIN Menu ON Orders.MenuID = Menu.MenuID
INNER JOIN MenuItems ON Menu.MenuItemID = MenuItems.MenuItemID 
WHERE Orders.Total > 150;
