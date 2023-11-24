SELECT
	emp_no,
    department,
    salary,
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS 'dept_row_number',
	ROW_NUMBER() OVER(ORDER BY salary DESC) AS 'overall_row_number'
FROM employees ORDER BY department;