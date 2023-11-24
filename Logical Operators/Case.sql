SELECT 
	title, 
    released_year,
	CASE
		WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th Century Lit'
	END AS 'genre'
FROM books;

SELECT 
    title,s
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 1 AND 40 THEN '*'
        WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
        WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
        WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;