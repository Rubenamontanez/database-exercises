use employees;
# TODO:1 Find all the employees with the same hire date as employee 101010 using a subquery.
#  69 Rows

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date  IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no  = '101010'
)
LIMIT 70;

# TODO:2 Find all the titles held by all employees with the first name Aamod.
#  314 total titles, 6 unique titles

SELECT DISTINCT title, emp_no
FROM titles
WHERE emp_no  IN (
    SELECT emp_no
    FROM employees
    WHERE first_name  = 'Aamod'
);

SELECT first_name, last_name
FROM employees
WHERE gender ='F' AND emp_no IN(
    SELECT emp_no
    FROM dept_manager
    WHERE to_date= '9999-01-01'
    );

SELECT dept_name from departments
WHERE dept_no IN (
    SELECT dept_no from dept_manager
    WHERE emp_no IN (
        SELECT emp_no from employees
        WHERE gender = 'F'
    )
      AND to_date > NOW()
);

SELECT first_name, last_name from employees
WHERE emp_no IN (
    SELECT emp_no
    from salaries
    WHERE salary = (
        SELECT MAX(salary) FROM salaries
    )
);
