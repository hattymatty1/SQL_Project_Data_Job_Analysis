CREATE TABLE job_applied(
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50)
);

SELECT *
FROM job_applied;

INSERT INTO job_applied
            (job_id,
            application_sent_date,
            custom_resume,
            resume_file_name,
            cover_letter_sent,
            cover_letter_file_name,
            STATUS)

VALUES      (1,
            '2024-02-01',
            TRUE,
            'resume_01.pdf',
            TRUE,
            'cover_letter_01.pdf',
            'submitted'),
            (2,
            '2024-02-02',
            TRUE,
            'resume_02.pdf',
            FALSE,
            NULL,
            'interview scheduled'),
            (3,
            '2024-02-03',
            TRUE,
            'resume_03.pdf',
            TRUE,
            'cover_letter_03.pdf',
            'ghosted'),
            (4,
            '2024-02-04',
            TRUE,
            'resume_04.pdf',
            FALSE,
            NULL,
            'submitted'),
            (5,
            '2024-02-05',
            FALSE,
            'resume_05.pdf',
            TRUE,
            'cover_letter_05.pdf',
            'rejected')