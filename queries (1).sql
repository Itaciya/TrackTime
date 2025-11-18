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

-- Passengers
CREATE TABLE Passengers (
  passenger_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  num CHAR(15)
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


-- Stations
INSERT INTO Stations (station_Id, name, location) VALUES
(1, 'Uttara Center', 'Uttara, Dhaka'),
(2, 'Uttara South', 'Uttara, Dhaka'),
(3, 'Pallabi', 'Mirpur, Dhaka'),
(4, 'Mirpur 11', 'Mirpur, Dhaka'),
(5, 'Mirpur 10', 'Mirpur, Dhaka'),
(6, 'Kazipara', 'Mirpur, Dhaka'),
(7, 'Shewrapara', 'Mirpur, Dhaka'),
(8, 'Agargaon', 'Agargaon, Dhaka'),
(9, 'Bijoy Sarani', 'Tejgaon, Dhaka'),
(10, 'Farmgate', 'Farmgate, Dhaka'),
(11, 'Kawran Bazar', 'Kawran Bazar, Dhaka'),
(12, 'Shahbagh', 'Shahbagh, Dhaka'),
(13, 'Dhaka University', 'Dhaka University Campus'),
(14, 'Bangladesh Secretariat', 'Secretariat, Dhaka'),
(15, 'Motijheel', 'Motijheel, Dhaka'),
(16, 'Kamalapur', 'Kamalapur, Dhaka');

-- Trains
INSERT INTO Trains (train_Id, name, capacity) VALUES
(1, 'MRT-6 Uttara Express 01', 600),
(2, 'MRT-6 Uttara Express 02', 620),
(3, 'MRT-6 Uttara Express 03', 610),
(4, 'MRT-6 Uttara Express 04', 630),
(5, 'MRT-6 Uttara Express 05', 640),
(6, 'MRT-6 Motijheel Express 01', 600),
(7, 'MRT-6 Motijheel Express 02', 615),
(8, 'MRT-6 Motijheel Express 03', 625),
(9, 'MRT-6 Motijheel Express 04', 610),
(10, 'MRT-6 Motijheel Express 05', 620),
(11, 'MRT-6 Uttara Commuter 01', 580),
(12, 'MRT-6 Uttara Commuter 02', 600),
(13, 'MRT-6 Motijheel Commuter 01', 590),
(14, 'MRT-6 Motijheel Commuter 02', 610),
(15, 'MRT-6 Express Link 01', 700);

-- Passengers
INSERT INTO Passengers (passenger_id, name, email, num) VALUES
(1, 'Alice Rahman', 'alice@example.com', '01710000001'),
(2, 'Bob Karim', 'bob@example.com', '01710000002'),
(3, 'Cathy Alam', 'cathy@example.com', '01710000003'),
(4, 'David Chowdhury', 'david@example.com', '01710000004'),
(5, 'Ema Hasan', 'ema@example.com', '01710000005'),
(6, 'Farhan Islam', 'farhan@example.com', '01710000006'),
(7, 'Gina Sultana', 'gina@example.com', '01710000007'),
(8, 'Hadi Khan', 'hadi@example.com', '01710000008'),
(9, 'Ina Roy', 'ina@example.com', '01710000009'),
(10, 'Jamil Ahmed', 'jamil@example.com', '01710000010'),
(11, 'Kazia Begum', 'kazia@example.com', '01710000011'),
(12, 'Liton Das', 'liton@example.com', '01710000012'),
(13, 'Mina Chowdhury', 'mina@example.com', '01710000013'),
(14, 'Nashit Hossain', 'nashit@example.com', '01710000014'),
(15, 'Oliya Rahman', 'oliya@example.com', '01710000015'),
(16, 'Rana Sarker', 'rana@example.com', '01710000016'),
(17, 'Sadia Noor', 'sadia@example.com', '01710000017'),
(18, 'Tariq Hossain', 'tariq@example.com', '01710000018'),
(19, 'Fariha Akter', 'fariha@example.com', '01710000019'),
(20, 'Zahin Ahmed', 'zahin@example.com', '01710000020');

-- MetroPass
INSERT INTO MetroPass (passenger_id, full_name, nid_number, phone, email, pass_type, balance) VALUES
(1, 'Alice Rahman', '1001', '01710000001', 'alice@example.com', 'MRT', 500.00),
(2, 'Bob Karim', '1002', '01710000002', 'bob@example.com', 'MRT', 200.00),
(3, 'Cathy Alam', '1003', '01710000003', 'cathy@example.com', 'RAPID', 450.00),
(4, 'David Chowdhury', '1004', '01710000004', 'david@example.com', 'MRT', 1200.00),
(5, 'Ema Hasan', '1005', '01710000005', 'ema@example.com', 'MRT', 180.00),
(6, 'Farhan Islam', '1006', '01710000006', 'farhan@example.com', 'RAPID', 550.00),
(7, 'Gina Sultana', '1007', '01710000007', 'gina@example.com', 'MRT', 400.00),
(8, 'Hadi Khan', '1008', '01710000008', 'hadi@example.com', 'RAPID', 220.00),
(9, 'Ina Roy', '1009', '01710000009', 'ina@example.com', 'RAPID', 1300.00),
(10, 'Jamil Ahmed', '1010', '01710000010', 'jamil@example.com', 'MRT', 500.00),
(11, 'Kazia Begum', '1011', '01710000011', 'kazia@example.com', 'RAPID', 190.00),
(12, 'Liton Das', '1012', '01710000012', 'liton@example.com', 'MRT', 480.00),
(13, 'Mina Chowdhury', '1013', '01710000013', 'mina@example.com', 'RAPID', 1250.00),
(14, 'Nashit Hossain', '1014', '01710000014', 'nashit@example.com', 'RAPID', 520.00),
(15, 'Oliya Rahman', '1015', '01710000015', 'oliya@example.com', 'MRT', 210.00);

-- Routes
INSERT INTO Routes (train_id, start_station_id, end_station_id, total_distance_km, estimated_time_minutes) VALUES
(1, 1, 5, 25.50, 40),
(1, 2, 4, 18.00, 30),
(2, 1, 3, 20.00, 35),
(2, 2, 5, 22.50, 38),
(3, 3, 1, 25.00, 45),
(3, 4, 5, 15.00, 25),
(4, 5, 2, 28.00, 50),
(4, 1, 4, 30.00, 55),
(5, 2, 3, 17.50, 28),
(5, 3, 4, 19.00, 32),
(1, 1, 3, 22.00, 36),
(2, 4, 1, 24.00, 40),
(3, 2, 5, 26.50, 48),
(4, 3, 5, 20.00, 34),
(5, 1, 5, 29.00, 52);
-- Schedules
INSERT INTO Schedules (train_id, station_id, arrival_time, departure_time) VALUES
(1, 1, '2025-10-21 08:00:00', '2025-10-21 08:10:00'),
(1, 2, '2025-10-21 08:30:00', '2025-10-21 08:35:00'),
(1, 3, '2025-10-21 09:00:00', '2025-10-21 09:05:00'),
(2, 1, '2025-10-21 08:15:00', '2025-10-21 08:25:00'),
(2, 4, '2025-10-21 08:50:00', '2025-10-21 08:55:00'),
(2, 5, '2025-10-21 09:20:00', '2025-10-21 09:25:00'),
(3, 2, '2025-10-21 07:50:00', '2025-10-21 08:00:00'),
(3, 3, '2025-10-21 08:40:00', '2025-10-21 08:45:00'),
(3, 5, '2025-10-21 09:30:00', '2025-10-21 09:35:00'),
(4, 1, '2025-10-21 06:30:00', '2025-10-21 06:40:00'),
(4, 4, '2025-10-21 07:10:00', '2025-10-21 07:15:00'),
(4, 5, '2025-10-21 07:50:00', '2025-10-21 07:55:00'),
(5, 3, '2025-10-21 09:15:00', '2025-10-21 09:25:00'),
(5, 4, '2025-10-21 09:55:00', '2025-10-21 10:00:00'),
(5, 2, '2025-10-21 10:30:00', '2025-10-21 10:35:00');
-- Delays
INSERT INTO Delays (schedule_id, delay_minutes, reason, delay_date) VALUES
(1, 5, 'Technical issue', '2025-10-21'),
(2, 10, 'Signal problem', '2025-10-21'),
(3, 3, 'Late arrival of previous train', '2025-10-21'),
(4, 7, 'Track maintenance', '2025-10-21'),
(5, 15, 'Weather conditions', '2025-10-21'),
(6, 2, 'Passenger boarding delay', '2025-10-21'),
(7, 0, 'No delay', '2025-10-21'),
(8, 12, 'Mechanical failure', '2025-10-21'),
(9, 5, 'Crew change', '2025-10-21'),
(10, 8, 'Power supply issue', '2025-10-21'),
(11, 4, 'Minor accident nearby', '2025-10-21'),
(12, 6, 'Track obstruction', '2025-10-21'),
(13, 0, 'No delay', '2025-10-21'),
(14, 9, 'High passenger load', '2025-10-21'),
(15, 11, 'Operational adjustment', '2025-10-21');

-- Alerts
INSERT INTO Alerts (passenger_id, delay_id, alert_message, alert_time, alert_type) VALUES
(1, 1, 'Train MRT-6 Uttara Express 01 delayed by 5 minutes due to technical issue.', '2025-10-21 08:05:00', 'Delay Notification'),
(2, 2, 'Signal problem causing 10-minute delay for MRT-6 Uttara Express 01.', '2025-10-21 08:30:00', 'Delay Notification'),
(3, 3, 'Previous train delay affecting schedule.', '2025-10-21 08:45:00', 'Schedule Update'),
(4, 4, 'Track maintenance ongoing on MRT line 2.', '2025-10-21 09:00:00', 'Maintenance Alert'),
(5, 5, 'Weather conditions affecting service timing.', '2025-10-21 09:10:00', 'Weather Update'),
(6, 6, 'Minor delay due to boarding time.', '2025-10-21 09:20:00', 'Delay Notice'),
(7, 7, 'All trains running on time.', '2025-10-21 09:25:00', 'Service Normal'),
(8, 8, 'Mechanical failure on MRT-6 Motijheel Express 03.', '2025-10-21 09:35:00', 'Critical Alert'),
(9, 9, 'Crew change delay at Mirpur station.', '2025-10-21 09:45:00', 'Crew Alert'),
(10, 10, 'Power supply issue under repair.', '2025-10-21 09:55:00', 'System Alert'),
(11, 11, 'Minor accident cleared; services resuming.', '2025-10-21 10:05:00', 'Safety Notice'),
(12, 12, 'Track obstruction causing temporary hold.', '2025-10-21 10:15:00', 'Track Alert'),
(13, 13, 'Train running smoothly with no delay.', '2025-10-21 10:20:00', 'Positive Update'),
(14, 14, 'High passenger load causing short delays.', '2025-10-21 10:30:00', 'Passenger Info'),
(15, 15, 'Operational adjustment: expect 11-minute delay.', '2025-10-21 10:40:00', 'Operational Notice');

-- Crowd Monitoring
INSERT INTO CrowdMonitoring (station_id, crowd_level, report_time, remarks) VALUES
(1, 'High', '2025-10-20 08:30:00', 'Morning rush hour'),
(2, 'Medium', '2025-10-20 09:00:00', 'Moderate traffic'),
(3, 'Low', '2025-10-20 10:00:00', 'Very few passengers'),
(4, 'High', '2025-10-20 07:45:00', 'Holiday crowd'),
(5, 'Medium', '2025-10-20 11:15:00', 'Regular morning'),
(6, 'Low', '2025-10-20 12:30:00', 'Off-peak hour'),
(7, 'High', '2025-10-20 17:30:00', 'Evening office return'),
(8, 'Medium', '2025-10-20 15:00:00', 'Usual movement'),
(9, 'Low', '2025-10-20 13:45:00', 'Less crowd'),
(10, 'High', '2025-10-20 18:00:00', 'Heavy commuter flow'),
(11, 'Medium', '2025-10-20 16:00:00', 'Busy but manageable'),
(12, 'Low', '2025-10-20 14:00:00', 'Quiet hour'),
(13, 'Medium', '2025-10-20 19:00:00', 'Steady stream of people'),
(14, 'High', '2025-10-20 08:00:00', 'Packed platforms'),
(15, 'Low', '2025-10-20 20:00:00', 'End of day quietness');

-- fetch

-- Find all station records
SELECT * FROM Stations;


-- Update station name from Farmgate to Farmgate Metro
UPDATE Stations
SET name = 'Farmgate Metro'
WHERE name = 'Farmgate';

-- Find stations again to verify the updated name
SELECT * FROM Stations;


-- Rename column 'name' to 'train_name' in Trains table
ALTER TABLE Trains
RENAME COLUMN name TO train_name;

-- Find all train records after renaming column
SELECT * FROM Trains;


-- Find trains sorted by highest capacity first
SELECT * FROM Trains
ORDER BY capacity DESC;


-- Find each station and the total number of crowd reports linked to it
SELECT s.name AS station_name, COUNT(c.crowd_id) AS total_reports
FROM CrowdMonitoring c
JOIN Stations s ON c.station_id = s.station_id
GROUP BY s.name;


-- Find all route details
SELECT * FROM Routes;


-- Find 2 unique metro pass types from MetroPass
SELECT DISTINCT pass_type
FROM MetroPass
LIMIT 2;


-- Find routes with distance between 20 and 30 km, sorted by shortest estimated time
SELECT route_id, total_distance_km, estimated_time_minutes
FROM Routes
WHERE total_distance_km BETWEEN 20 AND 30
ORDER BY estimated_time_minutes ASC;


-- Find passengers with balance < 300 OR RAPID pass type, sorted by highest balance
SELECT full_name, pass_type, balance
FROM MetroPass
WHERE balance < 300 OR pass_type = 'RAPID'
ORDER BY balance DESC;


-- Find all schedules with delay between 5 and 10 minutes including reasons
SELECT s.schedule_id, d.delay_minutes, d.reason
FROM Schedules s
JOIN Delays d ON s.schedule_id = d.schedule_id
WHERE d.delay_minutes BETWEEN 5 AND 10;


-- Find all passengers
SELECT * FROM Passengers;


-- Find all alerts for passenger with ID = 5
SELECT alert_message, alert_type, alert_time 
FROM Alerts 
WHERE passenger_id = 5;


-- Update all alerts having type 'Delay Notice' to 'Resolved'
UPDATE Alerts
SET alert_type = 'Resolved'
WHERE alert_type = 'Delay Notice';

-- Find all alerts that are now marked as 'Resolved'
SELECT * FROM Alerts 
WHERE alert_type = 'Resolved';


-- Update phone numbers starting with 0171 by prefixing '88'
UPDATE Passengers
SET num = CONCAT('88', num)
WHERE num LIKE '0171%';

-- Find all passengers with updated phone numbers
SELECT passenger_id, name, num 
FROM Passengers;


-- Find alerts along with their linked delay details
SELECT 
    a.alert_id,
    a.alert_message,
    a.alert_time,
    d.delay_minutes,
    d.reason,
    d.delay_date
FROM Alerts a
JOIN Delays d
    ON a.delay_id = d.delay_id;


-- Find passengers who do NOT have a MetroPass (left join null check)
SELECT
  p.passenger_id,
  p.name,
  m.pass_id
FROM Passengers p
LEFT JOIN MetroPass m
   ON p.passenger_id = m.passenger_id 
WHERE m.passenger_id IS NULL;
