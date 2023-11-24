SELECT * FROM series;
SELECT * FROM reviewers;
SELECT * FROM reviews;

-- Challenge 1
SELECT title, rating
FROM series
JOIN reviews ON series.id = reviews.series_id;

-- Challenge 2
SELECT title, Round(AVG(rating), 2) AS 'avg_rating'
FROM reviews
JOIN series ON series.id = reviews.series_id
GROUP BY title
ORDER BY avg_rating;

-- Challenge 3
SELECT first_name, last_name, rating
FROM reviewers
JOIN reviews ON reviewers.id = reviews.reviewer_id;

-- Challenge 4
SELECT title AS 'unreviewed_series'
FROM series
LEFT JOIN reviews ON series.id = reviews.series_id
WHERE rating IS NULL;

SELECT title AS 'unreviewed_series'
FROM reviews
RIGHT JOIN series ON series.id = reviews.series_id
WHERE rating is NULL;

-- Challenge 5
SELECT genre, Round(AVG(rating), 2) AS 'avg_rating'
FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;

-- Challenge 6
SELECT 
    first_name,
    last_name,
    Count(reviewer_id) AS 'count',
    Ifnull(Min(rating), 0) AS 'min',
    Ifnull(Max(rating), 0) AS 'max',
    Round(AVG(rating), 2) AS 'avg',
	IF(Count(rating) > 0, 'ACTIVE', 'INACTIVE') AS 'status'
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
GROUP BY last_name , first_name
ORDER BY max DESC;

-- Challenge 7
SELECT title, rating, Concat(first_name, ' ', last_name) as 'reviewer'
FROM reviews
JOIN series ON reviews.series_id = series.id
JOIN reviewers ON reviews.reviewer_id = reviewer_id
ORDER BY rating DESC;