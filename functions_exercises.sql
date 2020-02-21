use employees;

SELECT CONCAT(first_name,' ', last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY last_name ASC
;

SELECT * FROM employees
WHERE (hire_date
    BETWEEN '1990-01-01' AND '1999-12-31')
  AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC
;

SELECT DATEDIFF(CURRENT_DATE, hire_date) AS 'total days worked'
FROM employees
WHERE (hire_date
    BETWEEN '1990-01-01' AND '1999-12-31')
  AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC
;

SELECT CONCAT(first_name,' ', last_name) AS Name, timestampdiff(YEAR, hire_date,curdate()) AS 'Years with Company'
FROM employees WHERE birth_date LIKE '%12-25' and
(hire_date BETWEEN '1990-01-01' AND '1999-12-31')
ORDER BY timestampdiff(YEAR, hire_date,curdate()) ;


