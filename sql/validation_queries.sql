use imdb_etl;
SELECT COUNT(*) AS total_records
FROM imdb_movies;

SELECT COUNT(*) AS missing_movie_id
FROM imdb_movies
WHERE movie_id IS NULL;

SELECT COUNT(*) AS missing_rating
FROM imdb_movies
WHERE rating IS NULL;

SELECT *
FROM imdb_movies
LIMIT 10;