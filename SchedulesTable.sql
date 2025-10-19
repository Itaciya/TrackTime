-- Metro schedules
CREATE TABLE Schedules (
    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
    station VARCHAR(50),
    arrival_time DATETIME,
    departure_time DATETIME
);