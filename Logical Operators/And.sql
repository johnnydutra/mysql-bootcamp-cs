SELECT title, author_lname, released_year
FROM books 
WHERE author_lname = 'Eggers' 
AND released_year > 2010;

SELECT title, author_lname, released_year
FROM books 
WHERE author_lname = 'Eggers' 
AND released_year > 2010
AND title LIKE '%novel%';

SELECT title FROM books WHERE Char_Length(title) > 30;