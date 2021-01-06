/*1. Find the total amount of poster_qty paper ordered in the orders table.*/
SELECT SUM(poster_qty) AS total_poster
from orders;

/*2. Find the total amount of standard_qty paper ordered in the orders table.*/
SELECT SUM(standard_qty) AS total_standard
from orders

/*3. Find the total dollar amount of sales using the total_amt_usd in the orders table.*/
SELECT SUM(total_amt_usd) AS total_dollar_amount
from orders;

/*4. Find the total amount spent on standard_amt_usd and gloss_amt_usd paper for each order in the orders table. This should give a dollar amount for each order in the table.*/
SELECT SUM(standard_amt_usd) AS total_amount_standart, 
       SUM(gloss_amt_usd) AS total_amount_gloss
from orders;

/*5. Find the standard_amt_usd per unit of standard_qty paper. Your solution should use both an aggregation and a mathematical operator.*/
SELECT SUM(standard_amt_usd)/SUM(standard_qty) AS price_per_unity_standard
from orders;

