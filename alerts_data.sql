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