-- Query: Which faculties have the highest average placement packages?

SELECT f.faculty_name,
    ROUND(AVG(p.package_lpa), 2) AS avg_package
FROM placements p
JOIN students s
    ON p.enrollment_number = s.enrollment_number
JOIN faculty f
    ON s.faculty_code = f.faculty_code
GROUP BY f.faculty_name
ORDER BY avg_package DESC;


-- Result / Observation:
-- Engineering & Technology recorded the highest average
-- package at 7.87 LPA, followed by Management Studies &
-- Research at 7.86 LPA and Medicine at 7.66 LPA.
