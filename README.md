# IMDB Movie ETL Pipeline

## Project Overview

This project implements an end-to-end ETL pipeline for an IMDB Movie Dataset using Python, Pandas, MySQL, SQL, and Matplotlib.

### Pipeline Architecture

Dirty CSV Data
→ Python ETL (Pandas)
→ Clean Dataset
→ MySQL Database
→ SQL Analytics
→ Matplotlib Dashboards

---

## Technologies Used

* Python
* Pandas
* NumPy
* MySQL
* SQLAlchemy
* PyMySQL
* Matplotlib
* Git & GitHub

---

## ETL Business Rules

### BR-01: Duplicate Movie Handling

* Duplicate defined as: title + release_year
* Keep record with highest rating
* If ratings are equal, keep record with highest gross revenue

### BR-02: Missing Movie ID

* Generate surrogate keys for missing movie_id values

### BR-03: Missing Rating

* Replace missing ratings with genre-wise average rating

### BR-04: Missing Director / Lead Actor

* Replace missing values with 'Unknown'

---

## Project Structure

data/

* raw/
* processed/

notebooks/

* 01_Data_Profiling.ipynb
* 02_ETL_Transformations.ipynb
* 03_Load_To_MySQL.ipynb
* 04_Dashboard_Analysis.ipynb

sql/

* imdb_ddl.sql
* validation_queries.sql
* analytics_queries.sql

dashboard/

* top_grossing_movies.png
* rating_distribution.png
* top_directors.png
* budget_vs_gross.png
* profitable_genre.png

reports/

* dataset_analysis.md
* etl_summary.md

docs/

* progress_log.md

---

## Analytics & Dashboards

1. Top 10 Highest Grossing Movies
2. Rating Distribution Across Genres
3. Top 5 Directors by Average Rating
4. Budget vs Gross Correlation
5. Most Profitable Genre

---

## Outcome

Successfully built an end-to-end ETL pipeline from raw CSV data to analytical dashboards using industry-standard data engineering practices.
