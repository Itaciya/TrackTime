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