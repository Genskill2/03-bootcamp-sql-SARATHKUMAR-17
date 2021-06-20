CREATE TABLE publisher (
	id integer PRIMARY KEY,
	name text NOT NULL,
	country text NOT NULL
);

CREATE TABLE books (
	id integer PRIMARY KEY, 
	title text NOT NULL,
	publisher integer NOT NULL,
	FOREIGN KEY (publisher) REFERENCES publisher(id)
);

CREATE TABLE subjects (
	id integer PRIMARY KEY,
	name text NOT NULL
);

CREATE TABLE books_subjects(
	book integer,
	subject integer,
	FOREIGN KEY (book) REFERENCES books (id),
	FOREIGN KEY (subject) REFERENCES subjects (id)
);