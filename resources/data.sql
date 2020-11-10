INSERT INTO owners(id, name)
VALUES (1, 'Вова'),
       (2, 'Дима'),
       (3, 'Миша'),
       (4, 'Толя'),
       (5, 'Эля'),
       (6, 'Таня'),
       (7, 'Света'),
       (8, 'Оля'),
       (9, 'Гена'),
       (10, 'Жора');

INSERT INTO stations(id, name)
VALUES (1, 'Пушкинская'),
       (2, 'Тверская'),
       (3, 'Чеховская'),

       (4, 'Александровский сад'),
       (5, 'Арбатская'),
       (6, 'Боровицкая'),
       (7, 'Библиотека им. Ленина'),

       (8, 'Ленинский проспект'),
       (9, 'Площадь гагарина'),

       (10, 'Пролетарская'),
       (11, 'Крестьянская застава'),

       (12, 'Серпуховская'),
       (13, 'Добрынинская');

INSERT INTO districts(id, name)
VALUES (1, 'Центральный АО'),
       (2, 'Южный АО'),
       (3, 'Юго-восточный АО'),
       (4, 'Юго-западный АО');

INSERT INTO flats(id, rooms, floor, price, district_id, owner_id)
VALUES (1, 5, 5, 5500000, 1, 1),
       (2, 4, 3, 4000000, 1, 1),
       (3, 3, 6, 2900000, 2, 3),
       (4, 3, 8, 3100000, 3, 4),
       (5, 4, 4, 4000000, 4, 1);

INSERT INTO flats_stations(flat_id, station_id)
VALUES (1, 1),
       (1, 2),
       (1, 3),

       (2, 4),
       (2, 5),
       (2, 6),
       (2, 7),

       (3, 8),
       (3, 9),

       (4, 10),
       (4, 11),

       (5, 12),
       (5, 13);