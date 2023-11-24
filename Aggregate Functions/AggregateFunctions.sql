-- Print the number of books in the dataset
SELECT 
	COUNT(*) AS number_of_books 
FROM books;

-- Print out how many books were released in each year
SELECT 
	released_year, 
    COUNT(*) 
FROM books 
GROUP BY released_year 
ORDER BY released_year DESC;

-- Print out the total number of books in stock
SELECT 
	SUM(stock_quantity) AS total_stock
FROM books;

-- Find the average release year for each author
SELECT 
	author_fname, 
	author_lname, 
    AVG(released_year) AS avg_released_year
FROM books
GROUP BY 
	author_lname, 
    author_fname
ORDER BY avg_released_year;

-- Find the full name of the author who wrote the longest book
SELECT 
	CONCAT(
		author_fname,
        ' ', 
        author_lname
        ) AS author
FROM books
WHERE pages = (
	SELECT 
		MAX(pages) FROM books
	);

-- Make this happen: year | number of books | average pages
SELECT
	released_year AS 'year',
    COUNT(*) as '# books',
    AVG(pages) as 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year;