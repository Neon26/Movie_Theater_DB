DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_phone VARCHAR(13)    
);

DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    ticket_number INTEGER,
    price DECIMAL(10,2)    
);

DROP TABLE IF EXISTS movie CASCADE;
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(100),
    movie_description VARCHAR(100),
    movie_genre VARCHAR(100),
    movie_rating VARCHAR(15)
);

DROP TABLE IF EXISTS "show" CASCADE;
CREATE TABLE "show"(
    show_id SERIAL PRIMARY KEY,
    movie_id INTEGER,
    ticket_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS concessions CASCADE;
CREATE TABLE concessions(
    concession_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    concession_name VARCHAR(100),
    concession_price DECIMAL(10,2),
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS theater CASCADE;
CREATE TABLE theater(
    theater_id SERIAL PRIMARY KEY,
    theater_name VARCHAR(100),
    theater_phone VARCHAR(13)
);