SELECT
	emp_no,
    department,
    salary,
	Sum(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS 'rolling_dept_salary',
    Sum(salary) OVER(PARTITION BY department) AS 'total_dept_salary'
FROM employees;    

SELECT
	emp_no,
    department,
    salary,
	Min(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS 'rolling_min'
FROM employees;    