SELECT geoID, sum(Amount), AVG(Amount), sum(boxes)
FROM sales
GROUP BY geoID; /* Gives sum of the amount in each G1,G2 etc by group */
SELECT g.Geo, sum(Amount), AVG(Amount), sum(boxes)
FROM sales AS s
JOIN geo AS g ON s.geoID = g.geoID
GROUP BY g.Geo;
SELECT pr.category, p.team, sum(boxes), sum(amount)
FROM sales AS s
JOIN people AS p ON p.SPID = s.SPID
JOIN products AS pr on pr.PID = s.PID
WHERE p.team <> ''
GROUP BY pr.category, p.team
ORDER BY pr.category, p.team;
SELECT pr.product, sum(amount) AS 'Total Amount'
FROM sales AS s
JOIN products AS pr ON pr.PID = s.PID
GROUP BY pr.product
ORDER BY 'Total Amount' DESC;
SELECT pr.product, sum(amount) AS 'Total Amount'
FROM sales AS s
JOIN products AS pr ON pr.PID = s.PID
GROUP BY pr.product
ORDER BY 'Total Amount' DESC
LIMIT 10; /* Top 10 products */