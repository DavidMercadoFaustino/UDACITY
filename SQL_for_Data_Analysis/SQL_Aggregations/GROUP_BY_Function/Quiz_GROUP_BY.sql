/*1. Which account (by name) placed the earliest order? Your solution should have the account name and the date of the order.*/
SELECT accounts.name, MIN(orders.occurred_at) AS earliest_order
FROM accounts
JOIN orders
ON orders.account_id = accounts.id
GROUP BY accounts.name
ORDER BY earliest_order;

/* 2. Find the total sales in usd for each account. You should include two columns - the total sales for each company's orders in usd 
and the company name.*/
SELECT accounts.name, SUM(orders.total_amt_usd) AS total_sale
FROM accounts
JOIN orders
ON orders.account_id = accounts.id
GROUP BY accounts.name
ORDER BY total_sale;

/*3. Via what channel did the most recent (latest) web_event occur, which account was associated with this web_event? 
Your query should return only three values - the date, channel, and account name.*/
SELECT web_events.occurred_at, web_events.channel, accounts.name
FROM web_events 
JOIN accounts
ON web_events.account_id = accounts.id 
ORDER BY web_events.occurred_at DESC
LIMIT 1;

/*4. Find the total number of times each type of channel from the web_events was used. 
Your final table should have two columns - the channel and the number of times the channel was used.*/
SELECT channel, COUNT(channel)
FROM web_events 
GROUP BY channel;

/*5. Who was the primary contact associated with the earliest web_event?*/
SELECT web_events.occurred_at, accounts.primary_poc
FROM web_events 
JOIN accounts
ON web_events.account_id = accounts.id 
ORDER BY web_events.occurred_at DESC
LIMIT 1;

/*6. What was the smallest order placed by each account in terms of total usd. Provide only two columns - the account name and the total usd. 
Order from smallest dollar amounts to largest.*/
SELECT accounts.name, MIN(orders.total_amt_usd) AS smallest_sale
FROM accounts
JOIN orders
ON orders.account_id = accounts.id
GROUP BY accounts.name
ORDER BY total_sale;

/*7. Find the number of sales reps in each region. Your final table should have two columns - the region and the number of sales_reps. 
Order from fewest reps to most reps.*/
SELECT region.name, COUNT(sales_reps.*) AS sales_reps
FROM region
JOIN sales_reps
ON sales_reps.region_id = region.id
GROUP BY region.name
ORDER BY sales_reps;

/*8. For each account, determine the average amount of each type of paper they purchased across their orders. 
Your result should have four columns - one for the account name and one for the average quantity purchased for each of the paper types for each account.*/
SELECT accounts.name, AVG(orders.standard_qty) AS standard_avg, 
                      AVG(orders.gloss_qty) AS gloss_avg, 
                      AVG(orders.poster_qty) AS poster_avg
FROM accounts
JOIN orders
ON orders.account_id = accounts.id
GROUP BY accounts.name

/*9. For each account, determine the average amount spent per order on each paper type. 
Your result should have four columns - one for the account name and one for the average amount spent on each paper type.*/
SELECT accounts.name, AVG(orders.standard_amt_usd) AS standard_avg_spent, 
                      AVG(orders.gloss_amt_usd) AS gloss_avg_spent, 
                      AVG(orders.poster_amt_usd) AS poster_avg_spent
FROM accounts
JOIN orders
ON orders.account_id = accounts.id
GROUP BY accounts.name

/*10. Determine the number of times a particular channel was used in the web_events table for each sales rep. 
Your final table should have three columns - the name of the sales rep, the channel, and the number of occurrences. 
Order your table with the highest number of occurrences first.*/
SELECT sales_reps.name, web_events.channel, COUNT(*) AS num_occurences 
FROM accounts
JOIN sales_reps
ON accounts.sales_rep_id = sales_reps.id
JOIN web_events
ON web_events.account_id = accounts.id
GROUP BY sales_reps.name, web_events.channel
ORDER BY num_occurences DESC;

/* 11. Determine the number of times a particular channel was used in the web_events table for each region. 
Your final table should have three columns - the region name, the channel, and the number of occurrences. 
Order your table with the highest number of occurrences first.*/
SELECT region.name, web_events.channel, COUNT(*) AS num_occurences 
FROM accounts
JOIN web_events
ON web_events.account_id = accounts.id
JOIN sales_reps
ON accounts.sales_rep_id = sales_reps.id
JOIN region
ON region.id = sales_reps.region_id
GROUP BY region.name, web_events.channel
ORDER BY num_occurences DESC;
