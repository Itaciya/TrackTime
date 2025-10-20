-- CrowdMonitoring
CREATE TABLE CrowdMonitoring (
crowd_id INT PRIMARY KEY AUTO_INCREMENT,
station_id INT,
crowd_level ENUM('Low', 'Medium', 'High') NOT NULL,
report_time DATETIME DEFAULT CURRENT_TIMESTAMP,
remarks VARCHAR(255),
FOREIGN KEY (station_id) REFERENCES Stations(station_id)
);