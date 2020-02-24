use employees;

DESCRIBE employees;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manger'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY dept_name ASC;

# TODO:2 Find the name of all departments currently managed by women.

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manger'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' and gender = 'F'
ORDER BY dept_name ASC;

# TODO:3 Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS Title, count(t.title) AS count
FROM employees AS e
        JOIN dept_emp AS de
            on de.emp_no = e.emp_no
        JOIN departments d
            on d.dept_no = de.dept_no
        JOIN titles AS t
            on e.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01' and t.to_date = '9999-01-01' and d.dept_name = 'Customer Service'
GROUP BY t.title;

# TODO:4 Find the current salary of all current managers.
SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manger', salary AS 'Salary'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
        JOIN salaries s
            on e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01' and de.to_date = '9999-01-01'
ORDER BY dept_name ASC;

# TODO:Find the names of all current employees, their department name, and their current manager's name.

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name,
                            d.dept_name AS 'department name',
   CONCAT(first_name, ' ', last_name) AS 'Department Manger'
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no

WHERE de.to_date = '9999-01-01'
ORDER BY dept_name ASC;
SHOW TABLES;





SELECT concat(employees.first_name,' ',employees.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', concat(managers.first_name, ' ', managers.last_name) AS 'Manager Name'
FROM employees
         JOIN dept_emp AS de
              on de.emp_no = employees.emp_no
         JOIN departments AS d
              on de.dept_no = d.dept_no
         JOIN dept_manager AS m
              on m.dept_no = d.dept_no
         JOIN employees AS managers
              ON m.emp_no = managers.emp_no
WHERE de.to_date = '9999-01-01' AND m.to_date = '9999-01-01'
order by dept_name ASC ;


SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;