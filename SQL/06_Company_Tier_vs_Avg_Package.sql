-- Query: How does the average placement package vary across different company tiers?

SELECT
    c.company_tier,
    ROUND(AVG(p.package_lpa), 2) AS avg_package
FROM placements p
JOIN company c
    ON p.company_id = c.company_id
GROUP BY c.company_tier
ORDER BY avg_package DESC;


-- Result / Observation:
-- Tier 1 companies offered the highest average package
-- at 7.81 LPA, followed by Tier 2 at 7.08 LPA and
-- Tier 3 at 5.54 LPA. The results show a clear relationship
-- between company tier and average placement package.
