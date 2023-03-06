use assignment;
# Q1
CREATE TABLE flight
(
    id             INT PRIMARY KEY AUTO_INCREMENT,
    company        VARCHAR(255),
    departure_time DATE,
    departure_city VARCHAR(255),
    arrival_time   DATE,
    arrival_city   VARCHAR(255)
);
CREATE TABLE Hostesses
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(255),
    birth_date  DATE,
    hire_date   DATE,
    nationality VARCHAR(255),
    flight_id   INT,
    FOREIGN KEY (flight_id) REFERENCES flight (id)
);
INSERT INTO flight (company, departure_time, departure_city, arrival_time, arrival_city)
VALUES ('Delta', '2019-02-01', 'New York', '2019-02-02', 'Paris'),
       ('Delta', '2020-03-05', 'Paris', '2020-03-06', 'New York'),
       ('Air India', '2015-01-01', 'New York', '2015-01-01', 'Paris'),
       ('Air India', '2023-01-23', 'Mumbai', '2023-01-24', 'New York'),
       ('Indigo', '2022-04-05', 'Chicago', '2022-04-06', 'Mumbai'),
       ('Indigo', '2021-05-05', 'Mumbai', '2021-05-06', 'Chicago'),
       ('Air France', '2020-06-05', 'New York', '2020-06-06', 'Paris'),
       ('Air France', '2021-07-05', 'Paris', '2021-07-06', 'New York'),
       ('British Airways', '2022-08-05', 'New York', '2022-08-06', 'London'),
       ('British Airways', '2023-09-05', 'London', '2023-09-06', 'New York'),
       ('Lufthansa', '2021-10-05', 'New York', '2021-10-06', 'Berlin'),
       ('Lufthansa', '2020-11-05', 'Berlin', '2020-11-06', 'New York'),
       ('Air Canada', '2020-12-05', 'New York', '2020-12-06', 'Toronto'),
       ('Air Canada', '2021-01-05', 'Toronto', '2021-01-06', 'New York'),
       ('Qatar Airways', '2028-02-05', 'New York', '2028-02-06', 'Doha'),
       ('Qatar Airways', '2029-03-05', 'Doha', '2029-03-06', 'New York'),
       ('Emirates', '2020-04-05', 'New York', '2020-04-06', 'Dubai'),
       ('Emirates', '2022-05-05', 'Dubai', '2022-05-06', 'New York'),
       ('Singapore Airlines', '2022-06-05', 'New York', '2022-06-06', 'Singapore'),
       ('Singapore Airlines', '2019-07-05', 'Singapore', '2019-07-06', 'New York'),
       ('China Southern Airlines', '2018-08-05', 'New York', '2018-08-06', 'Guangzhou'),
       ('China Southern Airlines', '2015-09-05', 'Guangzhou', '2015-09-06', 'New York'),
       ('China Eastern Airlines', '2016-10-05', 'New York', '2016-10-06', 'Shanghai'),
       ('China Eastern Airlines', '2017-11-05', 'Shanghai', '2017-11-06', 'New York');

INSERT INTO Hostesses (name, birth_date, hire_date, nationality, flight_id)
VALUES ('Hannah Baker', '1990-01-01', '2015-01-01', 'American', 1),
       ('Jessica Davis', '1995-01-01', '2015-01-01', 'American', 1),
       ('Clay Jensen', '1996-01-01', '2015-01-01', 'American', 1),
       ('Alex Standall', '1993-01-01', '2015-01-01', 'American', 1),
       ('Justin Foley', '1992-01-01', '2015-01-01', 'American', 1),
       ('Zach Dempsey', '1999-01-01', '2015-01-01', 'American', 1),
       ('Monty De La Cruz', '1990-01-01', '2015-01-01', 'French', 1),
       ('Sheri Holland', '2000-01-01', '2015-01-01', 'American', 1),
       ('Tyler Down', '1993-01-01', '2015-01-01', 'American', 1),
       ('Ani Achola', '1990-01-01', '2015-01-01', 'American', 1),
       ('Marcus Cole', '1992-01-01', '2015-01-01', 'American', 1),
       ('Alex Standall', '1991-01-01', '2015-01-01', 'American', 2),
       ('Harry Potter', '1990-01-01', '2015-01-01', 'American', 3),
       ('Ron Weasley', '1990-01-01', '2015-01-01', 'American', 3),
       ('Hermione Granger', '1990-01-01', '2015-01-01', 'American', 4),
       ('Draco Malfoy', '1990-01-01', '2015-01-01', 'American', 4),
       ('Neville Longbottom', '1990-01-01', '2015-01-01', 'American', 5),
       ('Luna Lovegood', '1990-01-01', '2015-01-01', 'American', 5),
       ('Ginny Weasley', '1990-01-01', '2015-01-01', 'American', 6),
       ('Cho Chang', '1990-01-01', '2015-01-01', 'American', 6),
       ('Severus Snape', '1990-01-01', '2015-01-01', 'American', 7),
       ('Albus Dumbledore', '1990-01-01', '2015-01-01', 'American', 7),
       ('Minerva McGonagall', '1990-01-01', '2015-01-01', 'American', 8),
       ('Rubeus Hagrid', '1990-01-01', '2015-01-01', 'American', 8),
       ('Remus Lupin', '1990-01-01', '2015-01-01', 'American', 9),
       ('Sirius Black', '1990-01-01', '2015-01-01', 'American', 9),
       ('Peter Pettigrew', '1990-01-01', '2015-01-01', 'American', 10),
       ('James Potter', '1990-01-01', '2015-01-01', 'American', 10),
       ('Lily Potter', '1990-01-01', '2015-01-01', 'American', 11),
       ('Dobby', '1990-01-01', '2015-01-01', 'American', 11),
       ('Bellatrix Lestrange', '1990-01-01', '2015-01-01', 'American', 12),
       ('Voldemort', '1990-01-01', '2015-01-01', 'American', 12);
# Q1 A.
SELECT *
FROM flight
WHERE departure_city = 'Chicago';

# Q1 B.
SELECT name, hire_date
FROM Hostesses
         JOIN assignment.flight f on f.id = Hostesses.flight_id
WHERE f.departure_city IN ('London')
   OR f.arrival_city IN ('London');
# Q1 C.
SELECT *
FROM Hostesses
WHERE nationality = 'French';
# Q1. D
SELECT *
FROM flight
WHERE departure_time = '2023-01-01'
  AND arrival_time = '2023-01-03';
# Q1. E
SELECT name, birth_date
FROM Hostesses
WHERE birth_date = (SELECT MIN(birth_date) FROM Hostesses);
# Q1. F
SELECT id, departure_time
FROM flight
WHERE departure_time = (SELECT MIN((departure_time)) FROM flight);
# Q1. G
SELECT departure_city, COUNT(*) AS 'Number of Hostesses'
FROM flight
         JOIN Hostesses ON flight.id = Hostesses.flight_id
GROUP BY departure_city;
# Q1. H
SELECT AVG(YEAR(CURRENT_TIMESTAMP) - YEAR(birth_date)) AS 'Average Age'
FROM Hostesses;
# Q2
CREATE TABLE owner
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    first_name   VARCHAR(50),
    last_name    VARCHAR(50),
    email        VARCHAR(50),
    phone_number VARCHAR(50)
);
CREATE TABLE pet
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    name     VARCHAR(50),
    age      INT,
    type     VARCHAR(50),
    owner_id INT
);
INSERT INTO owner (first_name, last_name, email, phone_number)
VALUES ('John', 'Doe', 'john.doe@timmyurl.in', '1234567890'),
       ('Penguin', 'Doe', 'penguin.doe@timmyurl.in', '0987654321'),
       ('Jimmy', 'Patel', 'timmyurl@timmyurl.in', '1234567890'),
       ('John', 'Smith', 'john.smith@timmyurl.in', '1234567890'),
       ('Jane', 'Smith', 'jane.smith@timmyurl.in', '0987654321'),
       ('Raj', 'Shekhawat', 'raj.shekhawat@timmyurl.in', '1234567890'),
       ('Rahul', 'Shekhawat', 'rahul.shekhwat@timmyurl.in', '1234567890');
INSERT INTO pet (name, age, type, owner_id)
VALUES ('Fido', 1, 'Dog', 1),
       ('Fifi', 2, 'Dog', 1),
       ('Mithu', 3, 'Parrot', 2),
       ('Oreo', 4, 'rabbit', 3),
       ('Milo', 5, 'Dog', 4),
       ('Mittens', 6, 'Cat', 5);
# Q2 A
ALTER TABLE pet
    ADD CONSTRAINT FOREIGN KEY (owner_id) REFERENCES owner (id);
# Q2 B
ALTER TABLE pet
    CHANGE id id VARCHAR(255);
# Q2 C
SELECT *
FROM pet
         JOIN owner o on o.id = pet.owner_id;
# Q2 D
SELECT first_name,last_name FROM owner
WHERE id IN (SELECT owner_id FROM pet WHERE type = 'Dog' OR type = 'Parrot');

# Q2 E
SELECT *
FROM pet
WHERE owner_id IN (SELECT id FROM owner WHERE first_name = 'John' OR first_name = 'Jimmy');

# Q2 F
UPDATE owner
SET phone_number = '0987654321'
WHERE last_name = 'Shekhawat';
# Q2 G
SELECT *
FROM owner
WHERE id IN (SELECT owner_id FROM pet WHERE type = 'rabbit');
# Q2 H
SELECT first_name, last_name, COUNT(*) AS 'Number of Pets'
FROM pet
         JOIN assignment.owner o on o.id = pet.owner_id
GROUP BY owner_id
HAVING COUNT(*) > 1;

# Q3
CREATE TABLE company
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(50),
    country VARCHAR(50)
);
CREATE TABLE LAPTOP
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    model        VARCHAR(50),
    price        INT,
    release_date DATE,
    company_id   INT,
    FOREIGN KEY (company_id) REFERENCES company (id)
);

INSERT INTO company (name, country)
VALUES ('Apple', 'USA'),
       ('Dell', 'USA'),
       ('HP', 'USA'),
       ('Lenovo', 'China'),
       ('Asus', 'Taiwan'),
       ('Acer', 'Taiwan'),
       ('Microsoft', 'USA'),
       ('Samsung', 'South Korea'),
       ('Sony', 'Japan'),
       ('Toshiba', 'Japan');

INSERT INTO LAPTOP (model, price, release_date, company_id)
VALUES ('MacBook Pro', 200000, '2020-01-01', 1),
       ('MacBook Air', 100000, '2020-01-01', 1),
       ('MacBook', 1500, '1997-5-4', 1),
       ('Inspiron', 500, '2020-01-01', 2),
       ('Latitude', 600, '2020-01-01', 2),
       ('Alienware', 700, '2020-01-01', 2),
       ('Spectre', 800, '2020-01-01', 3),
       ('Envy', 900, '2020-01-01', 3),
       ('ThinkPad', 1000, '2020-01-01', 4),
       ('Yoga', 1100, '2020-01-01', 4),
       ('ZenBook', 1200, '2020-01-01', 5),
       ('VivoBook', 1300, '2020-01-01', 5),
       ('Swift', 1400, '2020-01-01', 6),
       ('Surface', 1500, '2020-01-01', 7),
       ('Galaxy Book', 1600, '2020-01-01', 8),
       ('Vaio', 1700, '2020-01-01', 9),
       ('Portege', 1800, '2020-01-01', 10);

# Q3 A
ALTER table company
    ADD COLUMN email VARCHAR (50);
# Q3 B
SELECT name
FROM company
         JOIN LAPTOP ON company.id = LAPTOP.company_id
WHERE release_date = '1997-5-4';
# Q3 C
SELECT name, AVG(price) AS 'AVG Price'
FROM company
         JOIN LAPTOP ON company.id = LAPTOP.company_id
GROUP BY name;
# Q3 D
SELECT name, COUNT(*) AS 'Number of Laptops'
FROM company
         JOIN LAPTOP ON company.id = LAPTOP.company_id
GROUP BY name;

# Q3 E
SELECT name, MAX(price) AS 'Max Price', MIN(price) AS 'Min Price'
FROM company
         JOIN LAPTOP ON company.id = LAPTOP.company_id
GROUP BY name;
# Q3 F
UPDATE LAPTOP
SET release_date = '2000-3-4'
WHERE company_id IN (SELECT id FROM company WHERE name = 'DELL');
# Q3 G
ALTER TABLE LAPTOP
    DROP COLUMN model;
