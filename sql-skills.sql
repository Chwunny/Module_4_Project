-- Add 3 new artists to the artist table using INSERT. (It’s already created.)

INSERT INTO artist (name)
VALUES (Drake);

INSERT INTO artist (name)
VALUES (Jaron);

INSERT INTO artist (name)
VALUES (THE1975);

-- Select 5 artists in alphabetical order.

SELECT * FROM artist
ORDER BY name
LIMIT 5;

---

-- List all employee first and last names only that live in Calgary.

SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column). You will need to query the employee table to find the Id for Nancy Edwards

SELECT first_name, last_name
FROM employee
WHERE reports_to = 2;

-- Count how many people live in Lethbridge.

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

---

-- Count how many orders were made from the USA.

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- Find the largest order total amount.

SELECT total FROM invoice
ORDER BY total DESC
LIMIT 1;

-- Find the smallest order total amount.

SELECT total FROM invoice
ORDER BY total ASC -- ASC isn't technically necessary here but I threw it in anyway for integrity
LIMIT 1;

-- Find all orders bigger than $5.

SELECT * FROM invoice
WHERE total > 5
ORDER BY total; -- Once again not necessary, but I find the data is much easier to digest when its ordered

-- Count how many orders were smaller than $5.

SELECT COUNT(*) FROM invoice
WHERE total < 5;

-- Get the total sum of the orders.

SELECT SUM(total) FROM invoice;

---

-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT * 
FROM invoice i
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
WHERE il.unit_price > 0.99;

-- Get the invoice_date, customer first_name and last_name, and total from all invoices.

SELECT i.invoice_date, c.first_name, c.last_name
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Note that support reps are on the employee table.

SELECT c.first_name, c.last_name, e.first_name, e.first_name
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

-- Get the album title and the artist name from all albums.

SELECT al.title "Album title", a.name "Artist name"
FROM album al
JOIN artist a
ON al.artist_id = a.artist_id;

---

