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


-- Question 5
select domain_code, sum(count_views) from data_01 
group by domain_code
having domain_code regexp "en.m$|en$";
