SELECT
"Name",
ROUND(AVG("Retail Price"), 2) AS AverageRetail,
ROUND(AVG("Used Price"), 2) AS AverageUsed
FROM "GPU Price History Final"
WHERE "Retail Price" > 0 AND "Used Price" > 0
GROUP BY "Name"
ORDER BY AverageRetail DESC
LIMIT 10
