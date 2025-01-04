CREATE TABLE Notifications (
    NotificationID INT AUTO_INCREMENT PRIMARY KEY,
    NotificationType ENUM('Low Stock', 'Order Delay', 'Reorder Reminder') NOT NULL,
    Message TEXT NOT NULL,
    ProductName VARCHAR(255) NOT NULL,
    StockLevel INT NOT NULL,
    NotificationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ReadStatus ENUM('Unread', 'Read') DEFAULT 'Unread',
    UserID INT,  -- Optional: If you want to associate notifications with users
    FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE SET NULL
);
