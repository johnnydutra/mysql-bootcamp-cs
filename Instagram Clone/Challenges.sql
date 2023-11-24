-- Challenge #1 - Find the 5 oldest users
SELECT id, username FROM users
ORDER BY created_at ASC LIMIT 5;

-- Challenge #2 - What day of the week do most users register on?
SELECT 
	Dayname(created_at) as 'day_of_the_week',
    Count(*) AS 'count' 
FROM users
GROUP BY day_of_the_week
ORDER BY count DESC;

-- Challenge #3 - Find the users who have never posted a photo
SELECT username
FROM users
LEFT JOIN photos ON users.id = photos.user_id
WHERE image_url IS NULL;

-- Challenge #4




-- Challenge #5




-- Challenge #6


-- Challenge #7