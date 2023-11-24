SELECT 
	author_lname,
    COUNT(*) AS books_written,
    MIN(released_year) as earliest_release, 
    MAX(released_year) as latest_release
FROM 
	books 
GROUP BY 
	author_lname, author_fname;