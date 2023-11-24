SELECT author_lname FROM books GROUP BY author_lname;
SELECT author_lname, COUNT(*) AS books_written FROM books GROUP BY author_lname ORDER BY books_written DESC;
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;