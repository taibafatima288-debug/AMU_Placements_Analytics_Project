-- Query: Does CGPA differ between placed and non-placed students?

SELECT placement_status,
    ROUND(AVG(cgpa), 2) AS avg_cgpa,
    COUNT(*) AS students
FROM students
GROUP BY placement_status
ORDER BY avg_cgpa DESC;


-- Result / Observation:
-- Students who were placed had an average CGPA of 7.76,
-- compared with 6.93 among students who were not placed.
-- This indicates that higher average CGPA is associated
-- with a higher placement outcome in this dataset.
