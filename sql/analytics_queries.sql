use imdb_etl;

-- 1. Identify Top 10 highest grossing movies by year.
SELECT
title,
genre,
release_year,
gross_million
FROM imdb_movies
ORDER BY gross_million DESC
LIMIT 10;

-- 2. Show rating distribution across genres.
SELECT
genre,
ROUND(AVG(rating), 2) AS avg_rating
FROM imdb_movies
GROUP BY genre
ORDER BY avg_rating DESC;

-- 3. Find Top 5 directors by average movie rating.
SELECT
director,
ROUND(AVG(rating), 2) AS avg_rating
FROM imdb_movies
WHERE director <> 'Unknown'
GROUP BY director
ORDER BY avg_rating DESC
LIMIT 5;

-- 4. Analyze budget vs gross correlation.
SELECT
title,
budget_million,
gross_million,
(gross_million - budget_million) AS profit
FROM imdb_movies
WHERE budget_million IS NOT NULL
AND gross_million IS NOT NULL;


-- 5. Identify most profitable genre. 
SELECT
genre,
ROUND(AVG(gross_million - budget_million), 2) AS avg_profit
FROM imdb_movies
WHERE budget_million IS NOT NULL
AND gross_million IS NOT NULL
GROUP BY genre
ORDER BY avg_profit DESC;