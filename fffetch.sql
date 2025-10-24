-- fetch
select * from Passengers;

select alert_message,alert_type,alert_time from Alerts where passenger_id=5;



UPDATE Alerts
SET alert_type = 'Resolved'
WHERE alert_type = 'Delay Notice';

select * FROM Alerts WHERE alert_type = 'Resolved';

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
    
  SELECT
  p.passenger_id,
  p.name,
  m.pass_id
  FROM Passengers p
  left JOIN MetroPass m
   ON p.passenger_id=m.passenger_id WHERE m.passenger_id IS NULL;
HAVING SUM(d.delay_minutes) > 10;


