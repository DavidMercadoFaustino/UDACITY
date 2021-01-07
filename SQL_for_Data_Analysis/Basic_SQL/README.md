## Basic SQL
* **SELECT** indicates which column(s) you want to be given the data for.

* **FROM** specifies from which table(s) you want to select the columns. Notice the columns need to exist in this table.
If you want to be provided with the data from all columns in the table, you use "*", like so:

**SELECT * FROM orders**
Note that using SELECT does not create a new table with these columns in the database, it just provides the data to you as the results, or output, of this command.

You will use this SQL SELECT statement in every query in this course, but you will be learning a few additional statements and operators that can be used along with them to ask more advanced questions of your data.

## Formatting Your Queries
### Using Upper and Lower Case in SQL
SQL queries can be run successfully whether characters are written in upper- or lower-case. In other words, SQL queries are not case-sensitive. 
However, you may have noticed that we have been capitalizing SELECT and FROM, while we leave table and column names in lower case. This is because even though SQL is case-insensitive, **it is common and best practice to capitalize all SQL commands, like SELECT and FROM, and keep everything else in your query lower case.**

Capitalizing command words makes queries easier to read, which will matter more as you write more complex queries. For now, it is just a good habit to start getting into, to make your SQL queries more readable.

One other note: The text data stored in SQL tables can be either upper or lower case, and SQL is case-sensitive in regard to this text data.
