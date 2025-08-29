CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE workers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO departments (id, department_name) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Sales');

INSERT INTO workers (id, name, department_id) VALUES
(1, 'Alice', 2),
(2, 'Bob', 1),
(3, 'Charlie', 3);

SELECT 
    workers.name AS worker_name,
    departments.department_name
FROM 
    workers
INNER JOIN 
    departments ON workers.department_id = departments.id;
