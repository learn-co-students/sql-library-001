INSERT INTO series (title, author_id, subgenre_id) VALUES ("Kingkiller Chronicles", 1, 1),
("Stormlight Archive", 2, 2); 

INSERT INTO authors (name) VALUES ("Patrick Rothfuss"), ("Brandon Sanderson");

INSERT INTO subgenres (name) VALUES ("Heroic fantasy"), ("Epic fantasy");

  
INSERT INTO books (title, year, series_id) VALUES ("The Name of the Wind", 2007, 1),
("The Wise Man's Fear" , 2011, 1), ("The Doors of Stone", NULL, 1),
("The Way of Kings", 2010, 2), ("Words of Radiance", 2014, 2),
("Oathbringer", NULL, 2);

INSERT INTO characters (name, author_id, series_id) VALUES ( "Devan Lochees", 1, 1),
( "Ambrose Jakis", 1, 1), ("Kvothe", 1, 1), ("Bast", 1, 2), ("Kaladin", 2, 2),
("Dalinar Kholin", 2, 2), ("Shallan Davar", 2, 2), ("Szeth-son-son-Vallano", 2, 2);

INSERT INTO character_books (character_id, book_id) VALUES (1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 3),
(3, 2), (4, 3), (5, 4), (5, 5), (5, 6), (6, 4), (6, 5), (6, 6), (7, 5), (8, 6);


