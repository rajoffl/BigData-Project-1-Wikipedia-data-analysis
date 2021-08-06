-- Create an external table to store all the data from the fike
create external table data (domain_code string, page_title string, count_views int, total_response_size int)
row format delimited
fields terminated by ' '
stored as textfile
;

-- Loading the data from file to the table
load DATA INPATH "/user/maria_dev/data/pageviews-20210101-000000" into table data;

-- Creating a table to store data for only German
create table de_data as select * from us_data where domain_code regexp "de";

-- Creating a table to store data for only English
create table en_data as select * from us_data where domain_code regexp "en";

-- Question 4
select en.page_title, sum(en.count_views) as us_visits, de.page_title ,sum(de.count_views) as ge_visits from en_data en
join de_data de
where en.page_title = de.page_title 
group by en.page_title, de.page_title
having us_visits > ge_visits 
order by us_visits desc, ge_visits
limit 20;
