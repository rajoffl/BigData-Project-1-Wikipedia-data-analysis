-- Creating a database for the project
CREATE DATABASE project1

-- Selecting the database
use project1;

-- Create a table to upload the data from the files
CREATE EXTERNAL TABLE IF NOT EXISTS pageviews1(lang STRING,	
					   page STRING,
					   views INT)
					   ROW FORMAT DELIMITED
					   FIELDS TERMINATED BY ' '
					   STORED AS TEXTFILE;
					   
-- Loading the files into the table
LOAD DATA INPATH '/user/maria_dev/data/formated_00.txt' INTO TABLE pageviews1;
LOAD DATA INPATH '/user/maria_dev/data/formated_01.txt' INTO TABLE pageviews1;
LOAD DATA INPATH '/user/maria_dev/data/formated_02.txt' INTO TABLE pageviews1;
.
.
.
LOAD DATA INPATH '/user/maria_dev/data/formated_23.txt' INTO TABLE pageviews1;

-- Display the contents of the table 
select *from pageviews1

-- Counting the total views from each page and storing it in a table
CREATE TABLE IF NOT EXISTS total_en_pageviews
AS SELECT DISTINCT(page), SUM(views) OVER (PARTITION BY page ORDER BY page) 
AS total_views FROM pageviews1 
WHERE page != 'Main_Page' AND page != 'Special:Search' AND page != '-';

-- Question 1 - Page with the most amount of views
SELECT * FROM total_en_pageviews
WHERE total_views > 100000
ORDER BY total_views DESC
LIMIT 1;

