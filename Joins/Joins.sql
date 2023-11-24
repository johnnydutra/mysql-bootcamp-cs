CREATE DATABASE school;

USE school;

CREATE TABLE students(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL
);

CREATE TABLE papers(
	title VARCHAR(100) NOT NULL,
    grade INT NOT NULL,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO students (first_name)
VALUES ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade)
VALUES (1, 'My First Book Report', 60),
	   (1, 'My Second Book Report', 75),
       (2, 'Russian Lit Through The Ages', 94),
       (2, 'De Montaigne And The Art Of The Essay', 98),
       (4, 'Borges And Magical Realism', 89);
       
SELECT * FROM students;
SELECT * FROM papers;

-- Print basic inner join
SELECT first_name, title, grade
FROM students JOIN papers ON students.id = papers.student_id
ORDER BY grade DESC;

-- Print left join
SELECT first_name, title, grade
FROM students LEFT JOIN papers ON students.id = papers.student_id;

SELECT 
	first_name,
    Ifnull(title, 'MISSING'),
    Ifnull(grade, 0)
FROM students LEFT JOIN papers ON students.id = papers.student_id;

SELECT
	first_name,
    Ifnull(AVG(grade), 0) as 'average'
FROM students LEFT JOIN papers ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;

SELECT
	first_name,
    Ifnull(AVG(grade), 0) as 'average',
    CASE
		WHEN AVG(grade) >= 70 THEN 'PASSING'
        ELSE 'FAILING'
    END    
FROM students LEFT JOIN papers ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;