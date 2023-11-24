-- Titles that contain 'Stories'
SELECT title 
FROM books 
WHERE title LIKE '%stories%';

-- Longest book
SELECT title, pages 
FROM books 
ORDER BY pages DESC 
LIMIT 1;

-- Summary containing title and year for the 3 most recent books
SELECT CONCAT(title, ' - ', released_year) AS summary 
FROM books 
ORDER BY released_year DESC 
LIMIT 3;

-- All books whose author's last name contains an ' '
SELECT title, author_lname 
FROM books 
WHERE author_lname LIKE '% %';

-- Three books that have the lowest stock
SELECT title, released_year, stock_quantity 
FROM books 
ORDER BY stock_quantity ASC 
LIMIT 3;

-- Title and last name sorted by last name then by title
SELECT title, author_lname 
FROM books 
ORDER BY author_lname, title;

-- Yell!
SELECT UPPER(CONCAT('my favorite author is ', author_fname, ' ', author_lname, '!')) AS yell 
FROM books 
ORDER BY author_lname ASC;