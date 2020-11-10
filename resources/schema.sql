CREATE TABLE owners
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE stations
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE districts
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE flats
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rooms INTEGER NOT NULL CHECK ( rooms > 0 AND rooms < 10),
    floor INTEGER NOT NULL CHECK ( floor > 0 AND floor < 100),
    price INTEGER NOT NULL CHECK ( price > 0),
    district_id INTEGER NOT NULL REFERENCES districts,
    owner_id INTEGER REFERENCES owners
);

CREATE TABLE flats_stations
(
    flat_id INTEGER NOT NULL REFERENCES flats,
    station_id INTEGER NOT NULL REFERENCES stations,
    UNIQUE (flat_id, station_id)
);

