/*
1. Quiz
*/

SELECT region.name region, sales_reps.name sales_reps, accounts.name account
FROM sales_reps
JOIN region
ON sales_reps.region_id = region.id
JOIN accounts
ON accounts.sales_rep_id = sales_reps.id
WHERE region.name ='Midwest'
ORDER BY accounts.name;

/*
2. Quiz
*/
SELECT region.name region, sales_reps.name sales_reps, accounts.name account
FROM sales_reps
JOIN region
ON sales_reps.region_id = region.id
JOIN accounts
ON accounts.sales_rep_id = sales_reps.id
WHERE region.name ='Midwest'
AND sales_reps.name LIKE 'S%'
ORDER BY accounts.name;

/*
3. Quiz
*/
FROM sales_reps
JOIN region
ON sales_reps.region_id = region.id
JOIN accounts
ON accounts.sales_rep_id = sales_reps.id
WHERE region.name ='Midwest'
AND sales_reps.name LIKE '% K%'
ORDER BY accounts.name;


/*
4. Quiz
*/
SELECT region.name region, accounts.name account, orders.total_amt_usd/(orders.total + 0.01) unit_price
FROM sales_reps
JOIN region
ON sales_reps.region_id = region.id
JOIN accounts
ON accounts.sales_rep_id = sales_reps.id
JOIN orders
ON orders.account_id = accounts.id
WHERE orders.standard_qty > 100;


/*
5. Quiz
*/
SELECT region.name region, accounts.name account, orders.total_amt_usd/(orders.total + 0.01) unit_price
FROM sales_reps
JOIN region
ON sales_reps.region_id = region.id
JOIN accounts
ON accounts.sales_rep_id = sales_reps.id
JOIN orders
ON orders.account_id = accounts.id
WHERE orders.standard_qty > 100
AND orders.poster_qty > 50
ORDER BY unit_price ASC;
