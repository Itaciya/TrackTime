-- Main table: Trains
CREATE TABLE Trains (
  train_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  capacity INT
);

-- Stations (supporting table)
CREATE TABLE Stations (
  station_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  location VARCHAR(100)
);

-- Schedules (depends on Trains & Stations)
CREATE TABLE Schedules (
  schedule_id INT PRIMARY KEY AUTO_INCREMENT,
  train_id INT,
  station_id INT,
  arrival_time DATETIME,
  departure_time DATETIME,
  FOREIGN KEY (train_id) REFERENCES Trains(train_id) ON DELETE CASCADE,
  FOREIGN KEY (station_id) REFERENCES Stations(station_id) ON DELETE CASCADE
);

-- Delays (depends on Schedules)
CREATE TABLE Delays (
  delay_id INT PRIMARY KEY AUTO_INCREMENT,
  schedule_id INT,
  delay_minutes INT,
  reason VARCHAR(100),
  delay_date DATE,
  FOREIGN KEY (schedule_id) REFERENCES Schedules(schedule_id) ON DELETE CASCADE
);

-- Passengers (independent users)
CREATE TABLE Passengers (
  p_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  num CHAR(15)
);

-- Alerts (depends on both Passengers and Delays → indirectly on Train)
CREATE TABLE Alerts (
  alert_id INT PRIMARY KEY AUTO_INCREMENT,
  p_id INT,
  delay_id INT,
  alert_message VARCHAR(255),
  alert_time DATETIME,
  alert_type VARCHAR(30),
  FOREIGN KEY (p_id) REFERENCES Passengers(p_id) ON DELETE CASCADE,
  FOREIGN KEY (delay_id) REFERENCES Delays(delay_id) ON DELETE CASCADE
);
