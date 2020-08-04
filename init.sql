-- 1.
CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(32),
    age INTEGER,
    height INTEGER,
    city VARCHAR(32),
    favorite_color VARCHAR(32)
);

-- 2.
INSERT INTO person
(name, age, height, city, favorite_color)
VALUES 
('Chris', 20, 168, 'Springfield', 'black'),
('Joan', 50, 160, 'Happy Valley', 'green'),
('Harry', 42, 170, 'Hereville', 'blue'),
('Mimi', 70, 163, 'Faraway', 'purple'),
('Doug', 64, 172, 'Closeby', 'orange');

-- 3.
SELECT * FROM person
ORDER BY height DESC; 

-- 4.
SELECT * FROM person
ORDER BY height ASC;

-- 5.
SELECT * FROM person
ORDER BY age DESC;

-- 6.
SELECT * FROM person
WHERE age > 20;

-- 7.
SELECT * FROM person
WHERE age = 18;

-- 8.
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- 9.
SELECT * FROM person
WHERE age != 27;

-- 10.
SELECT * FROM person
WHERE favorite_color <> 'red';

-- 11.
SELECT * FROM person
WHERE favorite_color <> 'red' AND favorite_color <> 'blue';

-- 12.
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- 13.
SELECT * FROM person
WHERE favorite_color IN 
('orange', 'green', 'blue');

-- 14. 
SELECT * FROM person
WHERE favorite_color IN 
('yellow', 'purple');

-----
-- Table - orders

-- 1.
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(40),
    product_price NUMERIC,
    quantity INTEGER
);

-- 2.
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(1, 'chair', 150.45, 1),
(2, 'step stool', 26.98, 2),
(2, 'shelf', 67.32, 3),
(3, 'bed frame', 44.44, 1),
(4, 'coffee table', 300.21, 2);

-- 3. 
SELECT * FROM orders;

-- 4.
SELECT SUM(quantity) FROM orders;

-- 5.
SELECT SUM(product_price * quantity) FROM orders;

-- 6.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2;

------

-- Table - artist

-- 1. 
INSERT INTO artist
(name)
VALUES
('Taylor Swift'),
('Elvis Presley'),
('George Harrison');

-- 2. 
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

-- 3.
SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

-- 4. 
SELECT * FROM artist
WHERE name LIKE 'Black%';

-- 5.
SELECT * FROM artist
WHERE name LIKE '%Black%';

-------

-- Table - Employee

-- 1. 
SELECT first_name, last_name FROM employee 
WHERE city = 'Calgary';

-- 2. 
SELECT MAX(birth_date) FROM employee;

-- Or for whole record of the youngest employee:
SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;

-- 3. 
SELECT MIN(birth_date) FROM employee;

-- 4.
SELECT employee_id FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT * FROM employee
WHERE reports_to = 2;

-- 5.
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';


----------
-- Table - invoice

-- 1.
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- 2.
SELECT MAX(total) FROM invoice;

-- 3.
SELECT MIN(total) FROM invoice;

-- 4.
SELECT * FROM invoice
WHERE total > 5;

-- 5.
SELECT COUNT(*) FROM invoice
WHERE total < 5;

-- 6.
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- 7.
SELECT AVG(total) FROM invoice;

-- 8.
SELECT SUM(total) FROM invoice;
