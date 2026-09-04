-- Query: Does having internship experience affect the placement rate?

SELECT internship_status,
    COUNT(*) AS total_students,SUM(CASE
    WHEN placement_status = 'PLACED' THEN 1 ELSE 0 END) AS placed_students,
    ROUND(100.0 * SUM(CASE WHEN placement_status = 'PLACED' THEN 1 ELSE 0 END) / COUNT(*),2 ) AS placement_rate
FROM students
GROUP BY internship_status;


-- Result / Observation:
-- Students with internship experience had a placement rate of
-- 66.79% (185 out of 277), compared with 48.88% (109 out of 223)
-- for students without internship experience.
