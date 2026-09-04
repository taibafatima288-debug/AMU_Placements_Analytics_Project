-- Query; Which companies hired the highest number of students?

SELECT
    c.company_name,
    COUNT(*) AS hires
FROM placements p
JOIN company c
    ON p.company_id = c.company_id
GROUP BY c.company_name
ORDER BY hires DESC;

-- Result / Observation:
-- PwC recorded the highest number of hires (20), followed by
-- Accenture (17) and Cambay Consulting (16).
