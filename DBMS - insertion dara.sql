
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
(15, 'MRT-6 Express Link 01', 700); -- Could run full route

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

