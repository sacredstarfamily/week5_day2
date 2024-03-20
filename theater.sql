CREATE TABLE customer(
	customer_id serial NOT NULL unique,
	first_name varchar,
	last_name varchar,
	email varchar NOT NULL,
	reward_points integer
);
CREATE TABLE movie (
	movie_id serial NOT	NULL unique,
	movie_title varchar NOT NULL
);

CREATE TABLE ticket (
	ticket_id serial NOT NULL,
	price integer NOT NULL,
	movie_id integer NOT NULL,
	purchaser integer NOT NULL,
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY (purchaser) REFERENCES customer(customer_id)
);
SELECT *
FROM ticket;
