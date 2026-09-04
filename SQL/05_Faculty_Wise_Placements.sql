-- Query: Which faculties have the highest number of student placements?

SELECT f.faculty_name,
    COUNT(*) AS placements
FROM placements p
JOIN students s
    ON p.enrollment_number = s.enrollment_number
JOIN faculty f
    ON s.faculty_code = f.faculty_code
GROUP BY f.faculty_name
ORDER BY placements DESC;


-- Result / Observation:
-- Engineering & Technology recorded the highest number of
-- placements (52), followed by Management Studies & Research
-- (51) and Commerce (44).
