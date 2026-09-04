-- Query: How has the number of placed students changed across different graduation years?

SELECT
    graduation_year,
    COUNT(*) AS placed_students
FROM students
WHERE placement_status = 'PLACED'
GROUP BY graduation_year
ORDER BY graduation_year;


-- Result / Observation:
-- The number of placed students increased from 39 in 2023
-- to 64 in 2024 and 119 in 2025, before reaching 72 in 2026.
-- The highest number of placements was recorded for the
-- 2025 graduating batch.
