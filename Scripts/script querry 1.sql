-- 1.	How many rows are in the data_analyst_jobs table?
-- SELECT COUNT (*) 
-- FROM data_analyst_jobs
--1793

-- 2.	Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?

-- SELECT title, company
-- From data_analyst_jobs
-- Limit 10
-- Exxon Mobile 

-- 3.	How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

-- Select Count (Distinct title)
-- From data_analyst_jobs
-- Where location = 'TN' or location = 'KY'
-- 17 in TN 
--- 21 in KY & TN 


-- 4.	How many postings in Tennessee have a star rating above 4?

-- Select Distinct star_rating
-- from data_analyst_jobs
-- Where location = 'TN' and star_rating >4

--- 3 above 4 star rating 


-- 5.	How many postings in the dataset have a review count between 500 and 1000?

-- Select Count (Distinct review_count)
-- From data_analyst_jobs
-- Where review_count between 500 and 1000
-- 70 postings 

-- 6.	Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?
-- Select location as state, avg(star_rating)as avg_rating
-- From data_analyst_jobs
-- Group by location 
-- Order by avg_rating
-- NE 

-- 7.	Select unique job titles from the data_analyst_jobs table. How many are there?

-- Select Count (Distinct title)
-- From data_analyst_jobs

--881

-- 8.	How many unique job titles are there for California companies?
-- Select Count (Distinct title)
-- From data_analyst_jobs
-- Where location = 'CA'
-- -230 

-- 9.	Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?
--Select company, avg(star_rating)as avg_rating
--From data_analyst_jobs
--Where review_count > 5000
--Group by company
--Order by avg_rating;

-- Select Count (Distinct company)
-- From data_analyst_jobs
-- Where review_count > 5000
-- -40 companies  

-- 10.	Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?
-- Select company, avg(star_rating)as avg_rating 
-- From data_analyst_jobs
-- Where review_count > 5000
-- Group by location, company
-- Order by avg_rating DESC

-- -Kaiser Permanente

-- 11.	Find all the job titles that contain the word ‘Analyst’. How many different job titles are there? 
-- Select count (Distinct title)
-- From data_analyst_jobs
-- Where title like '%Analyst%'

-- 754




-- 12.	How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?
-- Select *  
-- From data_analyst_jobs
-- Where title not like '%Analyst%' 
-- 	and title not like '%Analytics%'
-- 	and title not like '%analyst%' 
-- 	and title not like '%analytics%'
-- 	and title not like '%ANALYST%'
-- 	and title not like '%ANALYTICS%'
-- -4 they all require SQL and tableau skills 

-- **BONUS:**
-- You want to understand which jobs requiring SQL are hard to fill. Find the number of jobs by industry (domain) that require SQL and have been posted longer than 3 weeks. 
--  - Disregard any postings where the domain is NULL. 
--  - Order your results so that the domain with the greatest number of `hard to fill` jobs is at the top. 
--   - Which three industries are in the top 4 on this list? How many jobs have been listed for more than 3 weeks for each of the top 4?
