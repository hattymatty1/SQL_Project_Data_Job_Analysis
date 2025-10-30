/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 2) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY skills_dim.skills
ORDER BY
    avg_salary DESC
LIMIT 25

/*

🔍 Trends and Insights

1. AI & ML Frameworks Dominate
MXNet, TensorFlow, Keras, PyTorch, Hugging Face all appear in the top 20.
These reflect the growing integration of deep learning and NLP within analytics workflows.
Analysts skilled in machine learning model deployment and optimization are commanding premium salaries.

2. Data Infrastructure & Cloud Automation Skills
Terraform, Kafka, Airflow, Puppet, Ansible, VMware — highlight the crossover between data analytics and DevOps.
Data analysts who can automate pipelines and manage infrastructure are much more valuable in enterprise environments.

3. Programming & Backend Integration
Golang, Scala, Perl — not traditional data analyst tools, but they appear here because analysts who can handle backend data processing or high-performance systems are rare and highly paid.

4. Version Control & Collaboration Tools
GitLab, Bitbucket, Atlassian, Notion, SVN — indicate that collaboration, version tracking, and documentation are key in high-paying analytics teams.

5. Next-Gen & Specialized Tools
Solidity (Blockchain Analytics) and DataRobot (AutoML) show demand for specialized or emerging fields that blend analytics with advanced tech (DeFi, AI automation).

*/