CREATE TABLE supplier(
    s_id INT PRIMARY KEY,
    sname VARCHAR(255) ,
    p_code INT CHECK ( p_code > 0 ),
    address VARCHAR(255) NOT NULL
);

CREATE TABLE customer(
    c_id INT PRIMARY KEY ,
    c_name VARCHAR(255) NOT NULL,
    s_id INT ,
    address VARCHAR(255),
    country VARCHAR(25) DEFAULT 'India',
    FOREIGN KEY(s_id) REFERENCES supplier(s_id)
);
# Need to Drop these tables before doing the next Question
DROP TABLE customer;
DROP TABLE supplier;

