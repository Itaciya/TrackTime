-- fetch
select * from Passengers;

select alert_message,alert_type,alert_time from Alerts where passenger_id=5;


UPDATE Passengers
SET num = CONCAT('88', num)
WHERE num LIKE '0171%';

select passenger_id,name,num from Passengers;

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


SELECT passenger_id, alert_message, alert_time
FROM Alerts a
WHERE alert_time = (
    SELECT MAX(alert_time)
    FROM Alerts
    WHERE passenger_id = a.passenger_id
);

SELECT 
    p.name AS passenger_name,
    SUM(d.delay_minutes) AS total_delay
FROM Passengers p
JOIN Alerts a ON p.passenger_id = a.passenger_id
JOIN Delays d ON a.delay_id = d.delay_id
GROUP BY p.passenger_id, p.name
HAVING SUM(d.delay_minutes) > 10;
