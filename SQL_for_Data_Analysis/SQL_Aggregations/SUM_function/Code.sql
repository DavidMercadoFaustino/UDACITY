/*1*/
SELECT SUM(poster_qty) AS total_poster
from orders;

/*2*/
SELECT SUM(standard_qty) AS total_standard
from orders

/*3*/
SELECT SUM(total_amt_usd) AS total_dollar_amount
from orders;

/*4*/
SELECT SUM(standard_amt_usd) AS total_amount_standart, 
       SUM(gloss_amt_usd) AS total_amount_gloss
from orders;

/*5*/
SELECT SUM(standard_amt_usd)/SUM(standard_qty) AS price_per_unity_standard
from orders;

