SELECT 
	emp_no, 
    department, 
    salary, 
    AVG(salary) OVER(PARTITION BY department) AS 'dept_avg',
    AVG(salary) OVER() as 'company_avg'
FROM employees;

SELECT
	emp_no,
    department,
    salary,
    Count(*) OVER(PARTITION BY department) as 'dept_count'
FROM employees;    

SELECT
	emp_no,
    department,
    salary,
	Sum(salary) OVER(PARTITION BY department) AS 'dept_payroll',
    Sum(salary) OVER() AS 'dept_payroll'
FROM employees;