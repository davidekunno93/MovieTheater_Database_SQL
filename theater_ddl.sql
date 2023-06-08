-- Create tables > customer, invoice, sale, product

-- CREATE TABLE customer(
--     customer_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     email VARCHAR(100),
--     age INTEGER
-- )

-- CREATE TABLE invoice(
--     invoice_id SERIAL PRIMARY KEY,
--     customer_id INTEGER NOT NULL,
--     invoice_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
-- )

-- CREATE TABLE product(
--     product_id SERIAL PRIMARY KEY,
--     price NUMERIC(8, 2) NOT NULL,
--     product_name VARCHAR(50) NOT NULL,
--     product_desc VARCHAR,
--     product_image VARCHAR
-- )

-- CREATE TABLE sales(
--     sale_id SERIAL PRIMARY KEY,
--     invoice_id INTEGER NOT NULL,
--     product_id INTEGER NOT NULL,
--     FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id)
--     FOREIGN KEY (product_id) REFERENCES product(product_id)
-- )

-- theater database tables creation

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(25),
    genre VARCHAR(25)
)

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(50)
)

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    movie_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
)

CREATE TABLE concessions(
    concession_id SERIAL PRIMARY KEY,
    concession_name VARCHAR(25),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

-- Changes made after creation
ALTER TABLE movie
ALTER COLUMN title TYPE VARCHAR(50); 

ALTER TABLE ticket
ADD COLUMN price NUMERIC(4, 2);


-- After Creating database
SELECT *
FROM movie
ORDER BY movie_id;

SELECT *
FROM ticket;

SELECT *
FROM concessions;

SELECT *
FROM customer;

