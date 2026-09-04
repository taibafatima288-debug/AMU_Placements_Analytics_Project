-- Which sectors hired the highest number of students?

SELECT
    c.sector,
    COUNT(*) AS hires
FROM placements p
JOIN company c
    ON p.company_id = c.company_id
GROUP BY c.sector
ORDER BY hires DESC;


-- Result / Observation:
-- Consulting recorded the highest number of hires (56), followed
-- by IT Services (42) and Business Services (26). Banking ranked
-- fourth with 24 hires.
