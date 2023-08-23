USE employees;

SHOW TABLES;
DESCRIBE departments;
DESCRIBE employees;
DESCRIBE dept_emp;
SELECT * FROM departments;
SELECT * FROM dept_emp;
DESCRIBE dept_manager;
SELECT * FROM dept_manager;

SELECT CONCAT(m.first_name, ' ', m.last_name) AS manager_name, d.dept_name
FROM employees AS m
         JOIN dept_manager AS dm
              ON dm.emp_no = m.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no;

SELECT d.dept_name, CONCAT(m.first_name, ' ', m.last_name) AS manager_name
FROM employees AS m
         JOIN dept_manager AS dm
              ON dm.emp_no = m.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';



# Find the name of all departments currently managed by women.
SELECT d.dept_name, CONCAT(m.first_name, ' ', m.last_name) AS manager_name
FROM employees AS m
         JOIN dept_manager AS dm
              ON dm.emp_no = m.emp_no
         JOIN departments AS d
              ON  d.dept_no = dm.dept_no
         JOIN employees AS e
              ON e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F' ;

# Find the current titles of employees currently working in the Customer Service department.





