
-- create
CREATE TABLE Stations (
  station_Id INTEGER PRIMARY KEY,
  name VARCHAR(100),
  location VARCHAR(100)
);
CREATE TABLE Trains (
  train_Id INTEGER PRIMARY KEY,
  name VARCHAR(100),
  capacity INT
);
