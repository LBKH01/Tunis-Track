CREATE TABLE Admin (
    ID_ad INT PRIMARY KEY
);

CREATE TABLE Technician (
    ID_tech INT PRIMARY KEY
);

CREATE TABLE metro (
    ID_metro INT PRIMARY KEY,
    capacity INT,
    status VARCHAR(50)
);

CREATE TABLE real_time_track (
    ID_train INT PRIMARY KEY,
    longitude DECIMAL(10, 7),
    latitude DECIMAL(10, 7),
    speed DECIMAL(5, 2),
    nextstop VARCHAR(100),
    currentstop VARCHAR(100)
);

CREATE TABLE report (
    ID_rep INT PRIMARY KEY,
    ID_Card INT,
    ID_metro INT,
    description TEXT
);

CREATE TABLE task (
    ID_task INT PRIMARY KEY,
    ID_rep INT,
    ID_tech INT,
    ID_ad INT,
    description TEXT,
    status VARCHAR(50)
);

CREATE TABLE Kiosk (
    ID_kiosk INT PRIMARY KEY,
    placement VARCHAR(255),
    status VARCHAR(50)
);

CREATE TABLE Card (
    ID_card INT PRIMARY KEY,
    PIN VARCHAR(10)
);

CREATE TABLE card_status (
    ID_card INT,
    ID_kiosk INT,
    creation_time DATETIME,
    credit DECIMAL(10, 2),
    exp_date DATE,
    PRIMARY KEY (ID_card, ID_kiosk)
);

CREATE TABLE Station (
    ID_station INT PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(100),
    latitude DECIMAL(10, 7),
    longitude DECIMAL(10, 7)
);

CREATE TABLE route (
    ID_route INT PRIMARY KEY,
    begin_station_id INT,
    end_station_id INT,
    distance DECIMAL(10, 2)
);

CREATE TABLE Stop (
    ID_stop INT PRIMARY KEY,
    ID_route INT,
    ID_station INT
);

CREATE TABLE Entries (
    ID_ent INT PRIMARY KEY,
    ID_station INT,
    ID_card INT,
    time DATETIME
);

CREATE TABLE rechaging (
    ID_rech INT PRIMARY KEY,
    ID_card INT,
    time DATETIME,
    credit_card_nb VARCHAR(16),
    amount DECIMAL(10, 2)
);

CREATE TABLE announcements (
    ID_an INT PRIMARY KEY,
    ID_ad INT,
    ID_card INT,
    time DATETIME,
    content TEXT
);

CREATE TABLE view_history (
    ID_AD INT,
    ID_rep INT,
    view_time DATETIME,
    PRIMARY KEY (ID_AD, ID_rep)
);

