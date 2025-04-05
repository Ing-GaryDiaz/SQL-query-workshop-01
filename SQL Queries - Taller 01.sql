--Query 1 : Firts name of customers
SELECT
	FIRST_NAME
FROM
	CUSTOMER;

--Query 2 : first name, last name, and E_mail of customers
SELECT
	FIRST_NAME,
	LAST_NAME,
	EMAIL
FROM
	CUSTOMER;

--Query 3 :
SELECT
	*
FROM
	CUSTOMER;

--Query 4:
SELECT
	FIRST_NAME || ' ' || LAST_NAME AS "Full Name",
	EMAIL
FROM
	CUSTOMER;

--Query 5:
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
ORDER BY
	FIRST_NAME;

--Query 6:
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
ORDER BY
	FIRST_NAME ASC,
	LAST_NAME DESC;

--Query 7:
SELECT
	FIRST_NAME,
	LENGTH(FIRST_NAME) AS NAME_LENGTH
FROM
	CUSTOMER
ORDER BY
	NAME_LENGTH DESC;

--Query 8:
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME = 'Jamie';

--Query 9:
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME = 'Jamie'
	AND LAST_NAME = 'Rice';

--Query 10:
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME = 'Adam'
	OR LAST_NAME = 'Rodriguez';

--Query 11:
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME IN ('Ann', 'Anne', 'Annie');

--Query 12:
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME LIKE 'Ann%';

--qUERY 13: 
SELECT
	FIRST_NAME,
	LENGTH(FIRST_NAME) "Name LENGHT"
FROM
	CUSTOMER
WHERE
	FIRST_NAME LIKE 'A%'
	AND LENGTH(FIRST_NAME) BETWEEN 3 AND 5
ORDER BY
	"Name LENGHT";

--Query 14:
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME LIKE 'Bra%'
	AND LAST_NAME != 'Motley';

--Query 15:
SELECT
	TITLE,
	LENGTH,
	RENTAL_RATE
FROM
	FILM
WHERE
	LENGTH > 180
	AND RENTAL_RATE < 1;

--Query 16:
SELECT
	TITLE,
	RENTAL_RATE
FROM
	FILM
WHERE
	RENTAL_RATE = 0.99 OR RENTAL_RATE = 2.99;

--Query 17:
SELECT film_id, title, release_year
FROM film
ORDER BY film_id
LIMIT 5;

--Query 18:
SELECT film_id, title, release_year
FROM film
ORDER BY film_id
LIMIT 4
OFFSET 3;

--Query 19:
SELECT film_id, title, rental_rate
FROM film
ORDER BY rental_rate DESC
LIMIT 10;

--Query 20:
SELECT film_id, title
FROM film
ORDER BY title ASC
FETCH FIRST ROW ONLY;

--Query 21:
SELECT film_id, title
FROM film
ORDER BY title ASC
FETCH FIRST 5 ROWS ONLY;

--Query 22:
SELECT film_id, title
FROM film
WHERE film_id IN (1, 2, 3);

--Query 23:
SELECT first_name, last_name
FROM actor
WHERE last_name IN ('Allen', 'Chase', 'Davis')
ORDER BY last_name ASC;

--Query 24:
SELECT payment_id, amount, payment_date::date AS payment_date_only
FROM payment
WHERE payment_date::date IN ('2007-02-15', '2007-02-16');

--Query 25:
SELECT payment_id, amount
FROM payment
WHERE payment_id BETWEEN 17503 AND 17505
ORDER BY payment_id;

--Query 26:
SELECT payment_id, amount
FROM payment
WHERE payment_id NOT BETWEEN 17503 AND 17505
ORDER BY payment_id;

--Query 27:
SELECT payment_id, amount, payment_date
FROM payment
WHERE payment_date BETWEEN '2007-02-15' AND '2007-02-20'
  AND amount > 10
ORDER BY payment_date;

--Query 28:
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '%er%'
ORDER BY first_name;

--Query 29:
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '_her%'
ORDER BY first_name;

--Query 30:
SELECT first_name, last_name
FROM customer
WHERE first_name NOT LIKE 'Jen%'
ORDER BY first_name;

--Query 31:
SELECT first_name, last_name
FROM customer
WHERE first_name ILIKE 'BAR%'
ORDER BY first_name;

--Query 32:
SELECT address, address2
FROM address
WHERE address2 IS NULL;

--Query 33:
SELECT address, address2
FROM address
WHERE address2 IS NOT NULL;










