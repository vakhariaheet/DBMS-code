CREATE TABLE department
(
    dept_id        INT PRIMARY KEY,
    dept_name      VARCHAR(20) NOT NULL,
    regional_group VARCHAR(20)
);
CREATE TABLE employee
(
    emp_id        INT PRIMARY KEY,
    emp_name      VARCHAR(20) DEFAULT 'xyz',
    emp_salary    DECIMAL(8, 2) CHECK (emp_salary > 5000),
    emp_dept_id   INT,
    emp_hire_date DATE,
    FOREIGN KEY (emp_dept_id) REFERENCES department (dept_id)
);
# Need To Removes These For Next Assignment Question
DROP TABLE employee;
DROP TABLE department;