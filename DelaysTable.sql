-- metro delays
CREATE TABLE Delays (
    delay_id INT PRIMARY KEY AUTO_INCREMENT,
    schedule_id INT,
    delay_minutes INT,
    reason VARCHAR(100),
    delay_date DATE,
    FOREIGN KEY (schedule_id) REFERENCES Schedules(schedule_id)
);