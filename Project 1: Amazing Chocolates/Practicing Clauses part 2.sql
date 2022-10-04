SELECT * FROM sales;
SELECT * FROM people;
SELECT s.saleDate, s.Amount , p.Salesperson, s.SPID, p.SPID
FROM sales AS s /* gives sales table a shorter name called 's' */
JOIN people p ON p.SPID = s.SPID; /* gives people table a shorter name 'p' and joins both s and p tables on the common SPID */
SELECT s.saleDate, s.Amount, s.PID, pr.Product 
FROM sales AS s	
LEFT JOIN products AS pr ON pr.PID = s.PID;
SELECT s.saleDate, s.Amount, p.Salesperson, pr.Product, p.Team
FROM sales AS s
JOIN people AS p ON p.SPID = s.SPID
LEFT JOIN products AS pr ON pr.PID = s.PID
WHERE s.Amount < 500
AND p.Team = 'Delish'; /* Gets all records with product sales under 500 in Delish Team */
SELECT s.saleDate, s.Amount, p.Salesperson, pr.Product, p.Team
FROM sales AS s
JOIN people AS p ON p.SPID = s.SPID
LEFT JOIN products AS pr ON pr.PID = s.PID
WHERE s.Amount < 500
AND p.Team = ''; /* Gives all all sales under 500 where Team is blank */
SELECT s.saleDate, s.Amount, p.Salesperson, pr.Product, p.Team
FROM sales AS s
JOIN people AS p ON p.SPID = s.SPID
LEFT JOIN products AS pr ON pr.PID = s.PID
JOIN geo AS g ON g.GeoID = s.GeoID
WHERE s.Amount < 500
AND p.Team = ''
AND g.Geo IN ('New Zealand', 'India') /*Same as before but the shipment location is either in New Zealand or India */
ORDER BY saleDate;