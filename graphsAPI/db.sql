
CREATE TABLE graphs(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT
);

CREATE TABLE nodes (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	graph INTEGER REFERENCES graphs (id),
	x FLOAT,
	y FLOAT,
	name TEXT
);

CREATE TABLE links (
	id INTEGER PRIMARY KEY AUTOINCREMENT, 
	a INTEGER REFERENCES nodes (id),
	b INTEGER REFERENCES nodes (id),
);
