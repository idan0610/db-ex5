CREATE TABLE Guest (
	id INTEGER PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	birthYear INTEGER NOT NULL CHECK(birthYear >= 1900 AND birthYear <= 2015)
);

CREATE TABLE Room (
	rnum INTEGER PRIMARY KEY CHECK(rnum >= 1 AND rnum <= 30),
	floor INTEGER NOT NULL CHECK(floor >= 1 AND floor <= 4),
	price INTEGER CHECK(price > 0),
	area INTEGER NOT NULL DEFAULT(95) CHECK(area > 0),
	CHECK (area < 150 OR price >= 1000)
);

CREATE TABLE Stayed (
	id INTEGER NOT NULL REFERENCES Guest,
	rnum INTEGER NOT NULL REFERENCES Room,
	UNIQUE (id,rnum)
);