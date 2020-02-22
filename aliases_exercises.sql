use employees;

#TODO: Return 10 employees in a result set named
# 'full_name' in the format of 'last name, first name' for each employee.

SELECT CONCAT(emp_no ,' - ', first_name, ' ', last_name) AS full_name, birth_date
FROM employees
LIMIT 10;

SHOW TABLES;
SHOW INDEX FROM dept_emp;
DESCRIBE departments