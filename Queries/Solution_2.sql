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

-- Question 2 - Page with the most views in which internal links were used
select prev, sum(occ) as visits from clickstream
where type = "link" 
group by prev
order by visits desc
limit 10;


