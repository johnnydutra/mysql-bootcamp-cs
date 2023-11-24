SELECT title, AVG(rating) 
FROM full_reviews 
GROUP BY title HAVING Count(rating) > 1;

SELECT AVG(rating) FROM full_reviews;
SELECT title, AVG(rating) FROM full_reviews GROUP BY title;

SELECT title, AVG(rating) 
FROM full_reviews 
GROUP BY title WITH ROLLUP;

SELECT title, Count(rating) 
FROM full_reviews 
GROUP BY title WITH ROLLUP;

SELECT released_year, genre, AVG(rating)
FROM full_reviews
GROUP BY released_year, genre WITH ROLLUP;

