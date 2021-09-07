# Big-Data-Spark-Project-1
##### By Rajkumar

# Wikipedia Big Data Analysis

This analysis consists of using big data tools to answer questions about datasets from Wikipedia. There are a series of analysis questions, answered using Hive and MapReduce. The tools used are determined based on the context for each question.

# Technologies Used

1.  Hadoop
2.  HDFS
3.  Python
4.  Hive
5.  MapReduce
6.  Yarn
7.  Git + Github

# Features

1.  Find, organize, and format pageviews on any given day.
2.  Determine relative popularity of page access methods.
3.  Compare yearly popularity of pages.
4.  Find the different way to analyze the most internal search link fraction of hotel california.


# Data Definitions

    For Problem Statement 1, 4 & 5 we need to Download jan 20, 2021 DataSet.
    eg: fr.b 1-Naphthol 1 737**

### Data Explanation

domain_code: fr.b

page_title: Naphthol

count_views: 1

total_response_size: 733

### Types Of Data

wikibooks: ".b"         
wiktionary: ".d" 
foundationwiki: ".f"         
mobile sites: ".m" 
wikinews: ".n"          
wikiquote: ".q"
wikisource: ".s"         
wikiversity: ".v" 
wikivoyage: ".voy"       
mediawikiwiki: ".w" 
wikidatawiki: ".wd" 

    For Problem Statement 2 & 3 we need to download Jan 2021 month DataSet.
    eg: other-search Camp_Tawonga external 183

### Data Explanation

prev: the result of mapping the referrer URL to the fixed set of values described above

curr: the title of the article the client requested

type: describes (prev, curr)

n: the number of occurrences of the (referrer, resource) pair

### Types Of Data

type: describes (prev, curr)

link: if the referrer and request are both articles and the referrer links to the request

external: if the referrer host is not en(.m)?.wikipedia.org


# Problem Statement

1. Which English wikipedia article got the most traffic on January 20, 2021? 
2. What English wikipedia article has the largest fraction of its readers follow an internal link to another wikipedia article?
3. What series of wikipedia articles, starting with Hotel California, keeps the largest fraction of its readers clicking on internal links.
4. Find an example of an English wikipedia article that is relatively more popular in the Americas than elsewhere.There is no location data associated with the wikipedia pageviews    data, but there are timestamps. You'll need to make some assumptions about internet usage over the hours of the day.
5. Difference between total views of 'en' and 'en.m' pages.


# Contributors

* [Devansh Sharma](https://github.com/devanshsharma-bigdata/P2-RAWG-Data-Analysis)
* [Divya Reddy](https://github.com/Divyaredd/BIG_DATA_PROJECT2)
* [Hemanth ghosh](https://github.com/Hemanth-Ghosh/Big-Data-Project-1.git)
* [Sailash R](https://github.com/Sailash/Project_2)
* [Aparna Sankarasetti](https://github.com/aparnasankarasetti/project_1)
* [Ashish Kumar](https://github.com/AshishK199/Project_01)
* [Pooja Kumari](https://github.com/Pooja0210/Project1)


# Outputs

#### Question 1:
![Most Viewed English Page](https://user-images.githubusercontent.com/86596766/127760040-d29205cd-89be-476c-901e-eb63fdd9cd07.png)
#### Question 2:
![Most Internal Links](https://user-images.githubusercontent.com/86596766/127478128-b0c6ba42-6e34-4c56-b986-537bd57ba5e7.png)
#### Question 3:
![Hotel California](https://user-images.githubusercontent.com/86596766/127478209-9d620ee1-0117-473f-b5ee-b27f34cc3487.png)
#### Question 4:
![2021-08-02 (2)](https://user-images.githubusercontent.com/86596766/127787453-e2ac242d-61cf-446f-ad0e-914a6ec64980.png)
#### Question 5:
![Desktop VS Mobile Version (3)](https://user-images.githubusercontent.com/86596766/127787477-aea2c0d2-e09b-46da-8b37-ac096294cfd0.png)

# Reference

https://github.com/samye760/Wikipedia-Big-Data-Analysis
