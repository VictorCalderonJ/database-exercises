USE employees;
DESCRIBE employees;

# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
# Senior Engineer
# Staff
# Engineer
# Senior Staff
# Assistant Engineer
# Technique Leader
# Manager

SELECT DISTINCT title
from titles;
# or
SELECT DISTINCT title
FROM titles
GROUP BY title;

# Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
# Eldridge
# Erbe
# Erde
# Erie
# Etalle
SELECT last_name FROM employees
WHERE last_name like 'E%E'
GROUP BY last_name
ORDER BY last_name ASC;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT first_name, last_name FROM employees
WHERE last_name like 'E%E'
GROUP BY first_name, last_name
ORDER BY last_name;

# Find the unique last names with a 'q' but not 'qu'. Your results should be:
SELECT DISTINCT last_name
FROM employees
WHERE last_name like '%q%'
AND last_name NOT LIKE '%qu%';

# Add a COUNT() to your results and use GROUP BY to make it easier to find employees whose unusual name is shared with others.
SELECT COUNT(*) AS Total, last_name AS "LAST NAME"
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
SELECT COUNT(*), gender
FROM employees
WHERE first_name in ('irena', 'vidya', 'maya')
GROUP BY gender