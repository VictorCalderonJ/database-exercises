USE employees;

SHOW DATABASES;
DESCRIBE employees;
SELECT * from employees;
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT
    CONCAT (first_name, ' ', last_name) AS FullName
FROM employees
WHERE LEFT(last_name, 1) IN ('E')
  AND (RIGHT(last_name, 1) IN ('E'));
# Find all employees born on Christmas — 842 rows.
SELECT * FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25;
# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees
WHERE year(birth_date) BETWEEN 1900 AND 2000
  AND month(birth_date) = 12
  AND day(birth_date) = 25;
# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees
WHERE year(birth_date) BETWEEN 1900 AND 2000
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date DESC, birth_date;
# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).







