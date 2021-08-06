-- Create an external table to load the data from the file
CREATE EXTERNAL TABLE IF NOT EXISTS clickstream (
	prev STRING,
	curr STRING,
	type STRING,
	occ INT)
	ROW FORMAT DELIMITED
	FIELDS TERMINATED BY '\t'
	STORED AS TEXTFILE;

-- Load the data into the table from the file
LOAD DATA INPATH '/user/maria_dev/data/clickstream-enwiki-2020-12.tsv' INTO TABLE clickstream;


-- Question 3 - Pages starting with "Hotel California" who has the highest views and have clicked internal links

select prev, sum(occ) as visits from clickstream where prev like "%Hotel_California%" group by prev ORDER BY visits DESC limit 20;

(or) 

select prev, sum(pair) as visit 
from clickstream 
where prev regexp "Hotel_California" and types = "link"  
group by prev 
order by visit desc
limit 10;
