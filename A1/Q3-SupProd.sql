CREATE TABLE supplier
(
    id    INT PRIMARY KEY,
    name  VARCHAR(255) NOT NULL,
    phone VARCHAR(255)
);
CREATE TABLE product
(
    id          INT PRIMARY KEY,
    name        VARCHAR(255)   NOT NULL,
    price       DECIMAL(10, 2) NOT NULL,
    quantity    INT            NOT NULL,
    supplier_id INT            NOT NULL,
    FOREIGN KEY (supplier_id) REFERENCES supplier (id)
);

# Need to drop these tables before doing next question
DROP TABLE product;
DROP TABLE supplier;
