SELECT * FROM sales;
SELECT SaleDate, Amount, Customers FROM sales;
SELECT Amount, Customers, GeoID FROM sales;
SELECT SaleDate, Amount, Boxes, Amount / boxes AS 'Amount per box' FROM sales;
SELECT * FROM sales
WHERE amount > 10000;
SELECT * FROM sales
WHERE amount > 10000
ORDER BY amount;
SELECT * FROM sales
WHERE amount > 10000
ORDER BY amount DESC;
SELECT * FROM sales
WHERE GeoID = 'g1'
ORDER BY PID, Amount DESC;
SELECT * FROM sales
WHERE amount > 10000 AND SaleDate >= '2022-01-01';
SELECT SaleDate, Amount FROM sales
WHERE amount > 10000 AND YEAR(SaleDate) = 2022
ORDER BY amount DESC;
SELECT * FROM sales
WHERE Boxes > 0 AND Boxes <= 50;
SELECT * FROM sales
WHERE Boxes BETWEEN 0 AND 50;
SELECT SaleDate, Amount, Boxes, WEEKDAY(SaleDate) AS 'Day of week - 1'
FROM sales
WHERE  WEEKDAY(SaleDate) = 4;
SELECT * FROM people;
SELECT * FROM people
WHERE Team = 'Jucies' OR Team = 'Delish';
SELECT * FROM people
WHERE Team IN ('Delish', 'Jucies');
SELECT * FROM people
WHERE Salesperson LIKE 'B%'; /* Pattern matching, Finds all the names beginngin with the letter B*/
SELECT * FROM people
WHERE Salesperson LIKE '%B%'; /* Same as before but B is anywhere in the name */
SELECT SaleDate, Amount,
		CASE WHEN Amount < 1000 THEN 'Under 1k'
			 WHEN Amount < 5000 THEN 'Under 5k'
             WHEN Amount < 10000 THEN 'Under 10k'
		  ELSE '10k or more'
		END AS 'Amount Category' /* Name of new category */
FROM sales;
