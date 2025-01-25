DROP TABLE IF EXISTS mba_decision;
CREATE TABLE mba_decision (
    id INTEGER,
    age INTEGER,
    gender VARCHAR(50),
    undergraduate_major VARCHAR(255),
    undergraduate_gpa FLOAT,
    years_of_work_experience INTEGER,
    current_job_title VARCHAR(255),
    annual_salary FLOAT,
    has_management_experience BOOLEAN,
    gre_gmat_score INTEGER,
    undergrad_university_ranking INTEGER,
    entrepreneurial_interest FLOAT,
    networking_importance FLOAT,
    mba_funding_source VARCHAR(255),
    desired_post_mba_role VARCHAR(255),
    expected_post_mba_salar FLOAT,
    location_preference VARCHAR(255),
    reason_for_mba VARCHAR(255),
    online_vs_on_campus VARCHAR(255),
    decided_to_pursue_mba BOOLEAN,
    PRIMARY KEY (id)
);
COPY mba_decision(
    id,
    age,
    gender,
    undergraduate_major,
    undergraduate_gpa,
    years_of_work_experience,
    current_job_title,
    annual_salary,
    has_management_experience,
    gre_gmat_score,
    undergrad_university_ranking,
    entrepreneurial_interest,
    networking_importance,
    mba_funding_source,
    desired_post_mba_role,
    expected_post_mba_salar,
    location_preference,
    reason_for_mba,
    online_vs_on_campus,
    decided_to_pursue_mba)
FROM '/var/lib/postgresql/data/pgdata/mba_decision_dataset.csv'
DELIMITER ','
CSV HEADER;