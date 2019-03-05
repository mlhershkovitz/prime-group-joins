# prime-group-joins

In this challenge, we’re going to practice performing SQL queries with multiple tables. This should help better solidify some concepts that were covered during lecture.

Assumptions
You are using Postico
Postgres is currently running on your computer
Setup
Follow the instructions below before continuing with this challenge.

Create your database, table, and data
We are creating a database with a multiple tables and records. Please follow the instructions below to create a new database with this table and data.

Open Postico, if needed
Connect to your server, if needed
Create a warehouse database
Click on the OK tab/button to save your database
Open the SQL editor and run the queries in data.sql
Entity Relationship Diagram (ERD)
See a diagram of the available entities and their relationships. https://docs.google.com/drawings/d/1eA7JJtCVDL0K45aVzbxIUrgWXHoKY5vv1jAhssC2c1A/edit

NOTE: Remember that a many-to-many relationship requires a join table, so the entities in the diagram may be missing some actual tables. Explore the tables in your database.

GitHub repo
Create a GitHub repo named “prime-group-joins”.
Create a file called “joins-solution.sql”. You will store your responses to the exercise questions here. NOTE: This is merely a text file with a .sql extension.
Exercise
For each of the following questions

Write a comment that specifies which question you are answering. (SQL comments are two dashes, followed by text.)
Write the SQL query that answers the question, below that comment.
Once one person writes half of the queries, switch off.
Example question and answer
-- 0. Get all the users
SELECT * FROM customers;
Tasks
Get all customers and their addresses.
Get all orders and their line items (orders, quantity and product).
Which warehouses have cheetos?
Which warehouses have diet pepsi?
Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
How many customers do we have?
How many products do we carry?
What is the total available on-hand quantity of diet pepsi?
Stretch
How much was the total cost for each order?
How much has each customer spent in total?
How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).