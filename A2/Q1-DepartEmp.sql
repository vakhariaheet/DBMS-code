CREATE TABLE employee
(
    id        INT PRIMARY KEY,
    name      VARCHAR(255),
    join_date DATE,
    salary    DECIMAL(15, 2),
    post      VARCHAR(255),
    city      VARCHAR(255)
);
CREATE TABLE department
(
    id          INT PRIMARY KEY,
    name        VARCHAR(255),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee (id)
);
INSERT INTO employee (id, name, join_date, salary, post, city)
VALUES (1, 'John', '2010-01-01', 10000, 'Manager', 'New York'),
       (2, 'David', '2010-01-02', 18000, 'Developer', 'New York'),
       (3, 'Michael', '2010-01-03', 8000, 'Developer', 'London'),
       (4, 'Ramesh', '2015-01-04', 6000, 'Developer', 'Bangalore'),
       (5, 'Naresh', '2010-01-05', 6000, 'Developer', 'Bangalore'),
       (6, 'Joe', '2010-01-06', 7000, 'Tester', 'New York'),
       (7, 'Scott', '2010-01-07', 25000, 'Tester', 'New York'),
       (8, 'Jeniffer', '2010-01-08', 8000, 'Developer', 'New York'),
       (9, 'Kim', '2010-01-09', 10000, 'Manager', 'London'),
       (10, 'Sam', '2010-01-10', 6000, 'Developer', 'London'),
       (11, 'Ram', '2010-01-11', 6000, 'Developer', 'New York'),
       (12, 'Peter', '2010-01-12', 7000, 'Tester', 'Bangalore'),
       (13, 'Ram', '2010-01-13', 8000, 'Developer', 'New York'),
       (14, 'Ron', '2010-01-14', 7000, 'Tester', 'New York'),
       (15, 'Chris', '2010-01-15', 6000, 'Developer', 'Bangalore'),
       (16, 'Rahul', '2010-01-16', 8000, 'Developer', 'New York');
INSERT INTO department (id, name, employee_id)
VALUES (200, 'HR', 1),
       (201, 'Sales', 2),
       (202, 'Marketing', 3),
       (204, 'Sales', 4),
       (205, 'Finance', 5),
       (206, 'IT', 6),
       (207, 'Marketing', 7),
       (208, 'Finance', 8),
       (209, 'IT', 9),
       (210, 'Marketing', 10),
       (211, 'Finance', 11),
       (212, 'IT', 12),
       (213, 'Marketing', 13),
       (214, 'IT', 14),
       (215, 'Finance', 15),
       (216, 'Marketing', 16);

# Q1
SELECT *
FROM department
WHERE employee_id IN (SELECT id
                      FROM employee
                      WHERE post = 'Manager');
# Q2
SELECT *
FROM department
WHERE employee_id IN (SELECT id FROM employee WHERE YEAR(join_date) > 2010);

# Q3
SELECT *
FROM department
WHERE employee_id IN (SELECT id FROM employee WHERE salary > 20000);

# Q4
SELECT *
FROM employee
WHERE id IN (SELECT employee_id FROM department WHERE id = 200);

# Q5
SELECT *
FROM employee
WHERE id NOT IN (SELECT employee_id FROM department WHERE name IN ('Finance', 'Sales'));
