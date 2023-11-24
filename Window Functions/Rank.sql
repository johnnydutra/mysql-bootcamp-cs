SELECT
	emp_no,
    department,
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS 'dept_salary_rank',
	RANK() OVER(ORDER BY salary DESC) AS 'overall_salary_rank'
FROM employees ORDER BY department;

SELECT
	emp_no,
    department,
    salary,
    DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS 'dept_salary_dense_rank',
	DENSE_RANK() OVER(ORDER BY salary DESC) AS 'overall_salary_dense_rank'
FROM employees ORDER BY department;