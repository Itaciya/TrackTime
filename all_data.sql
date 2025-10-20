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
(15, 'Oliya Rahman', 'oliya@example.com', '01710000015');

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