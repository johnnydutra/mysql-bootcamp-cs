SELECT title, author_fname, author_lname FROM books WHERE author_fname = 'David';
SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%da%';
SELECT * FROM books WHERE author_fname LIKE '____';
SELECT * FROM books WHERE author_fname LIKE '%n';
SELECT * FROM books WHERE title LIKE '%\%%';