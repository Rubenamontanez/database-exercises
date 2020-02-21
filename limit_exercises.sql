use employees;

SELECT DISTINCT title FROM titles;


SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'Z%'
LIMIT 10;