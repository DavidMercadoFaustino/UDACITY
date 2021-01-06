/* 1 */
SELECT id, account_id, occurred_at
FROM orders;

/* 2 */
SELECT occurred_at, account_id, channel
FROM web_events
LIMIT 15;

/* 3 */
SELECT id, occurred_at, total_amt_usd
FROM orders
ORDER BY occurred_at
LIMIT 10;

/* 4 */
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC 
LIMIT 5;

/* 5 */
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd
LIMIT 20;

/* 6 */
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY account_id, total_amt_usd DESC;

/* 7 */
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC, account_id;

/* 9 */
SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
LIMIT 5;

/* 10 */
SELECT *
FROM orders
WHERE total_amt_usd < 500
LIMIT 10;

/* 11 */
SELECT name, website, primary_poc
FROM accounts
WHERE name = 'Exxon Mobil';

/* 12 */
SELECT id, account_id, standard_amt_usd/standard_qty AS unit_price
FROM orders
LIMIT 10;

/* 13 */
SELECT id, account_id, 
   poster_amt_usd/(standard_amt_usd + gloss_amt_usd + poster_amt_usd) AS post_per
FROM orders
LIMIT 10;

/* 14 */
SELECT name
FROM accounts
WHERE name LIKE 'C%';

/* 15 */
SELECT name
FROM accounts
WHERE name LIKE '%one%';

/* 16 */
SELECT name
FROM accounts
WHERE name LIKE '%s';

/* 17 */
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom');

/* 18 */
SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords');

/* 19 */
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name NOT IN ('Walmart', 'Target', 'Nordstrom');

/* 20 */
SELECT *
FROM web_events
WHERE channel NOT IN ('organic', 'adwords');

/* 21 */
SELECT name
FROM accounts
WHERE name NOT LIKE 'C%';

/* 22 */
SELECT name
FROM accounts
WHERE name NOT LIKE '%one%';

/* 23 */
SELECT name
FROM accounts
WHERE name NOT LIKE '%s';

/* 24 */
SELECT *
FROM orders
WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0;

/* 25 */
SELECT name
FROM accounts
WHERE name NOT LIKE 'C%' AND name LIKE '%s';

/* 26 */
SELECT occurred_at, gloss_qty 
FROM orders
WHERE gloss_qty BETWEEN 24 AND 29;

/* 27 */
SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords') AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01'
ORDER BY occurred_at DESC;

/* 28 */
SELECT id
FROM orders
WHERE gloss_qty > 4000 OR poster_qty > 4000;

/* 29 */
SELECT *
FROM orders
WHERE standard_qty = 0 AND (gloss_qty > 1000 OR poster_qty > 1000);

/* 30 */
SELECT *
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%') 
           AND ((primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
           AND primary_poc NOT LIKE '%eana%');
