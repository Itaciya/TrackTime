SELECT * FROM Routes;

SELECT DISTINCT pass_type
FROM MetroPass
LIMIT 2;

SELECT route_id, total_distance_km, estimated_time_minutes
FROM Routes
WHERE total_distance_km BETWEEN 20 AND 30
ORDER BY estimated_time_minutes ASC;

SELECT full_name, pass_type, balance
FROM MetroPass
WHERE balance < 300 OR pass_type = 'RAPID'
ORDER BY balance DESC;

SELECT s.schedule_id, d.delay_minutes, d.reason
FROM Schedules s
JOIN Delays d ON s.schedule_id = d.schedule_id
WHERE d.delay_minutes BETWEEN 5 AND 10;
