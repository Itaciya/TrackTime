DELETE FROM Stations
WHERE location = 'Uttara, Dhaka' OR location = 'Mirpur, Dhaka';
SELECT * FROM Stations;

UPDATE Stations
SET name = 'Farmgate Metro'
WHERE name = 'Farmgate';
SELECT * FROM Stations;

ALTER TABLE Trains
RENAME COLUMN name TO train_name;
SELECT * FROM Trains;

SELECT * FROM Trains
ORDER BY capacity DESC;

SELECT s.name AS station_name, COUNT(c.crowd_id) AS total_reports
FROM CrowdMonitoring c
JOIN Stations s ON c.station_id = s.station_id
GROUP BY s.name;
