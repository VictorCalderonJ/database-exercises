USE employees;

# Create a file named where_exercises.sql.
# Make sure to use the employees database before you begin.

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');


# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees
WHERE LEFT(last_name, 1) IN ('E');


# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT DISTINCT * FROM employees
WHERE last_name LIKE '%q%';

# Part Two

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees
WHERE gender = 'M'
  AND (first_name IN ('Irena','Vidya')
    OR first_name = 'Maya');

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees
WHERE LEFT(last_name, 1) IN ('E')
   OR (RIGHT(last_name, 1) IN ('E'));

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees
WHERE LEFT(last_name, 1) IN ('E')
  AND (RIGHT(last_name, 1) IN ('E'));

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT DISTINCT * FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';


