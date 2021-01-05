/*
1. Exercicio
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
2. Exercicio
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
3. Exercicio
*/
FROM sales_reps
JOIN region
ON sales_reps.region_id = region.id
JOIN accounts
ON accounts.sales_rep_id = sales_reps.id
WHERE region.name ='Midwest'
AND sales_reps.name LIKE '% K%'
ORDER BY accounts.name;
