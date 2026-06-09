##OBSERVATIONS

📊 Dataset Overview
📌 Shape
Rows: 5,500
Columns: 9

📌 Data Types
Type	Columns
float64	movie_id, rating, budget_million, gross_million, release_year
string	title, genre, director, lead_actor

🧩 Missing Values Analysis
Column	Missing Values	% Missing	Insight
movie_id	323	5.9%	Minor issue (ID integrity affected)
rating	289	5.3%	Low missingness
budget_million	931	16.9%	High missingness
gross_million	917	16.7%	High missingness
director	780	14.2%	Moderate missingness
lead_actor	914	16.6%	High missingness
release_year	614	11.2%	Moderate missingness
title	0	0%	Clean
genre	0	0%	Clean

📈 Numerical Summary
⭐ Ratings
Mean: 6.51
Median: 6.5
Min–Max: 3.5 – 9.5
👉 Ratings are fairly balanced and centered around 6–7

💰 Budget (in millions)
Mean: 69.07M
Median: 60M
Min–Max: 10M – 150M
👉 Slight right skew (few high-budget films)

💵 Gross Revenue (in millions)
Mean: 229.43M
Median: 150M
Min–Max: 20M – 600M
👉 Strong right skew (blockbuster effect)

📅 Release Year
Range: 2015 – 2022
Mean: 2018.49
👉 Dataset focuses on modern films

⚠️ Key Data Quality Issues
1. Missing Financial Data
Budget and gross have ~17% missing values
👉 This affects profit and ROI analysis

2. Missing Cast & Crew Data
Director & lead actor missing in ~14–16% rows
👉 Limits star/director-based analysis

3. ID Column Issue
movie_id has missing values and float type
👉 Should ideally be clean integer identifiers
