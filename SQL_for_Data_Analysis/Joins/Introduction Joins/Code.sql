/* 1 */
SELECT accounts.primary_poc, web_events.occurred_at, web_events.channel, accounts.name
FROM web_events 
JOIN accounts 
ON web_events.account_id = accounts.id
WHERE accounts.name = 'Walmart';

/* 2 */
SELECT region.name region, sales_reps.name rep, accounts.name account
FROM sales_reps 
JOIN region
ON sales_reps.region_id = region.id
JOIN accounts 
ON accounts.sales_rep_id = sales_reps.id
ORDER BY accounts.name;

/* 3 */
SELECT region.name region, accounts.name account, 
       orders.total_amt_usd/(o.total + 0.01) unit_price
FROM region
JOIN sales_reps 
ON sales_reps.region_id = region.id
JOIN accounts 
ON accounts.sales_rep_id = sales_reps.id
JOIN orders 
ON orders.account_id = accounts.id;
