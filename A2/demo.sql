CREATE TABLE branch_master
(
    no       INT PRIMARY KEY,
    name     VARCHAR(255),
    location VARCHAR(255)
);

CREATE TABLE customer_master
(
    no      INT PRIMARY KEY,
    name    VARCHAR(255),
    gender  VARCHAR(5),
    dob     DATE,
    city    VARCHAR(255),
    contact VARCHAR(12)
);
CREATE TABLE Account_Master
(
    no        INT PRIMARY KEY,
    type      VARCHAR(255),
    b_no      INT,
    c_no      INT,
    open_date DATE,
    balance   DECIMAL(20, 2),
    FOREIGN KEY (b_No) REFERENCES branch_master (no),
    FOREIGN KEY (c_No) REFERENCES customer_master (no)
);


INSERT INTO Branch_Master (no, name, location)
VALUES (1, 'ABC Bank', 'New York');
INSERT INTO Branch_Master (no, name, location)
VALUES (2, 'XYZ Bank', 'London');
INSERT INTO Branch_Master (no, name, location)
VALUES (3, 'PQR Bank', 'Paris');
INSERT INTO Branch_Master (no, name, location)
VALUES (4, 'LMN Bank', 'Tokyo');
INSERT INTO Branch_Master (no, name, location)
VALUES (5, 'EFG Bank', 'Sydney');
INSERT INTO Branch_Master (no, name, location)
VALUES (6, 'GHI Bank', 'Dubai');
INSERT INTO Branch_Master (no, name, location)
VALUES (7, 'JKL Bank', 'Mumbai');
INSERT INTO Branch_Master (no, name, location)
VALUES (8, 'MNO Bank', 'Hong Kong');
INSERT INTO Branch_Master (no, name, location)
VALUES (9, 'RST Bank', 'Berlin');
INSERT INTO Branch_Master (no, name, location)
VALUES (10, 'UVW Bank', 'Singapore');


INSERT INTO customer_master (no, name, gender, dob, city, contact)
VALUES (1, 'John', 'M', '1980-01-01', 'New York', '1234567890'),
       (2, 'Heet', 'M', '2005-02-22', 'Ahmedabad', '9104680032'),
       (3, 'Pooja', 'F', '2004-11-09', 'Ahmedabad', '9104680032'),
       (4, 'Dhruv', 'M', '2005-02-22', 'Mumbai', '9104680032'),
       (5, 'Crishraj', 'M', '2005-02-22', 'Mumbai', '9104680032'),
       (6, 'Dhruvi', 'F', '2005-02-22', 'Surat', '9104680032'),
       (7, 'Sakshi', 'F', '2005-02-22', 'Ahmedabad', '9104680032'),
       (8, 'Krish', 'M', '2005-02-22', 'Ahmedabad', '9104680032'),
       (9, 'Prarthana', 'F', '2004-11-08', 'Mumbai', '9104680032'),
       (10, 'Daksh', 'M', '2005-02-22', 'Ahmedabad', '9104680032'),
       (11, 'Jay', 'M', '2005-02-22', 'Ahmedabad', '9104680032'),
       (12, 'Tirth', 'M', '2005-02-22', 'Ahmedabad', '9104680032'),
       (13, 'Prachi', 'F', '2004-02-10', 'Ahmedabad', '9104680032');


INSERT INTO Account_Master (no, type, b_no, c_no, open_date, balance)
VALUES (1, 'Savings', 1, 1, '2000-01-01', 100000),
       (2, 'Savings', 1, 2, '2004-01-01', 40000),
       (3, 'Savings', 1, 3, '2007-04-01', 1000),
       (4, 'Savings', 1, 4, '2014-01-01', 10000),
       (5, 'Savings', 1, 5, '2015-01-01', 50000),
       (6, 'Savings', 1, 6, '2017-01-01', 60000),
       (7, 'Savings', 1, 7, '2003-01-01', 80000),
       (8, 'Savings', 1, 8, '2005-04-01', 4000),
       (9, 'Savings', 1, 9, '2022-01-01', 50000),
       (10, 'Savings', 1, 10, '2023-05-01', 500),
       (11, 'Savings', 1, 11, '2016-06-01', 100000),
       (12, 'Savings', 1, 12, '2010-01-01', 1000),
       (13, 'Savings', 1, 13, '2010-01-01', 1000),
       (14, 'Savings', 2, 1, '2010-01-01', 1000),
       (15, 'Savings', 2, 2, '2010-01-01', 1000),
       (16, 'Savings', 2, 3, '2010-01-01', 1000),
       (17, 'Savings', 2, 4, '2010-01-01', 1000),
       (18, 'Savings', 2, 5, '2010-01-01', 1000),
       (19, 'Savings', 2, 6, '2010-01-01', 1000);

SELECT *
FROM account_master
WHERE c_no IN (SELECT no FROM customer_master WHERE city = 'Mumbai' AND gender = 'M');

SELECT *
FROM Account_Master
WHERE YEAR(open_date) BETWEEN 2000 AND 2007;

SELECT *
FROM Account_Master
WHERE balance < 4000;

SELECT *
FROM customer_master
WHERE no IN (SELECT c_no FROM Account_Master WHERE balance = (SELECT MAX(balance) FROM Account_Master))
UNION
SELECT *
FROM customer_master
WHERE no IN (SELECT c_no FROM Account_Master WHERE balance = (SELECT MIN(balance) FROM Account_Master))