
-- create
CREATE TABLE Passengers (
  pid INTEGER PRIMARY KEY,
  name varchar(50) NOT NULL,
  email varchar(100) NOT NULL,
  num char(15)
);
CREATE TABLE Alerts (
    alert_id INT PRIMARY KEY,
    passenger_id INT,
    train_id INT,
    alert_message VARCHAR(255),
    alert_time DATETIME,
    alert_type VARCHAR(30),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);
