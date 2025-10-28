SELECT 
    job_title_short,
    company_id,
    job_location
FROM january_jobs;

SELECT 
    job_title_short,
    company_id,
    job_location
FROM february_jobs;

SELECT 
    job_title_short,
    company_id,
    job_location
FROM march_jobs;

-- Union join the selection and create a new table and removes the duplicates 
-- Whereas in Unioin all it joins the selection and create a new table including duplicates

-- Get jobs and compasnies from Janurary

SELECT 
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs

UNION ALL

-- Get jobs and companies from February

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_jobs

UNION ALL
-- Get job and companies from March

SELECT 
    job_title_short,
    company_id,
    job_location
FROM
    march_jobs