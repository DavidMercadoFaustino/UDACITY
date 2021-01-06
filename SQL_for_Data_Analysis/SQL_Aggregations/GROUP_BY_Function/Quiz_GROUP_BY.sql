/*1. Which account (by name) placed the earliest order? Your solution should have the account name and the date of the order.*/
SELECT accounts.name, MIN(orders.occurred_at) AS earliest_order
FROM accounts
JOIN orders
ON orders.account_id = accounts.id
GROUP BY accounts.name
ORDER BY earliest_order;

/* 2. Find the total sales in usd for each account. You should include two columns - the total sales for each company's orders in usd and the company name.*/


/*3. Via what channel did the most recent (latest) web_event occur, which account was associated with this web_event? Your query should return only three values - the date, channel, and account name.*/


/*4. Find the total number of times each type of channel from the web_events was used. Your final table should have two columns - the channel and the number of times the channel was used.*/


/*5. Who was the primary contact associated with the earliest web_event?*/


/*6. What was the smallest order placed by each account in terms of total usd. Provide only two columns - the account name and the total usd. Order from smallest dollar amounts to largest.*/


/*7. Find the number of sales reps in each region. Your final table should have two columns - the region and the number of sales_reps. Order from fewest reps to most reps.*/
