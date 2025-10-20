-- Main table: Trains
CREATE TABLE Trains (
  train_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  capacity INT
);

-- Stations
CREATE TABLE Stations (
  station_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  location VARCHAR(100)
);

-- Schedules
CREATE TABLE Schedules (
  schedule_id INT PRIMARY KEY AUTO_INCREMENT,
  train_id INT,
  station_id INT,
  arrival_time DATETIME,
  departure_time DATETIME,
  FOREIGN KEY (train_id) REFERENCES Trains(train_id) ON DELETE CASCADE,
  FOREIGN KEY (station_id) REFERENCES Stations(station_id) ON DELETE CASCADE
);

-- Delays
CREATE TABLE Delays (
  delay_id INT PRIMARY KEY AUTO_INCREMENT,
  schedule_id INT,
  delay_minutes INT,
  reason VARCHAR(100),
  delay_date DATE,
  FOREIGN KEY (schedule_id) REFERENCES Schedules(schedule_id) ON DELETE CASCADE
);

-- Passengers
CREATE TABLE Passengers (
  passenger_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  num CHAR(15)
);

-- Alerts
CREATE TABLE Alerts (
  alert_id INT PRIMARY KEY AUTO_INCREMENT,
  passenger_id INT,
  delay_id INT,
  alert_message VARCHAR(255),
  alert_time DATETIME,
  alert_type VARCHAR(30),
  FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id) ON DELETE CASCADE,
  FOREIGN KEY (delay_id) REFERENCES Delays(delay_id) ON DELETE CASCADE
);

-- Crowd Monitoring
CREATE TABLE CrowdMonitoring (
  crowd_id INT PRIMARY KEY AUTO_INCREMENT,
  station_id INT,
  crowd_level ENUM('Low', 'Medium', 'High') NOT NULL,
  report_time DATETIME DEFAULT CURRENT_TIMESTAMP,
  remarks VARCHAR(255),
  FOREIGN KEY (station_id) REFERENCES Stations(station_id)
);

-- Routes
CREATE TABLE Routes (
  route_id INT PRIMARY KEY AUTO_INCREMENT,
  train_id INT,
  start_station_id INT,
  end_station_id INT,
  total_distance_km DECIMAL(5,2),
  estimated_time_minutes INT,
  FOREIGN KEY (train_id) REFERENCES Trains(train_id),
  FOREIGN KEY (start_station_id) REFERENCES Stations(station_id),
  FOREIGN KEY (end_station_id) REFERENCES Stations(station_id)
);

-- MetroPass
CREATE TABLE MetroPass (
  pass_id INT PRIMARY KEY AUTO_INCREMENT,
  passenger_id INT,
  full_name VARCHAR(100) NOT NULL,
  nid_number VARCHAR(20) UNIQUE NOT NULL,
  phone CHAR(15) NOT NULL,
  email VARCHAR(100) NOT NULL,
  registration_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  pass_type VARCHAR(30),
  balance DECIMAL(10,2) DEFAULT 0.00,
  FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id) ON DELETE CASCADE
);
