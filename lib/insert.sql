INSERT INTO series (title, author_id, subgenre_id) VALUES ("A Song of Ice and Fire", 1, 1);
INSERT INTO series (title, author_id, subgenre_id) VALUES ("The Hunger Games", 2, 2);

INSERT INTO subgenres (name) VALUES ("Epic High Fantasy");
INSERT INTO subgenres (name) VALUES ("YA Fantasy");

INSERT INTO authors (name) VALUES ("George R.R. Martin");
INSERT INTO authors (name) VALUES ("Suzanne Collins");

INSERT INTO books (title, year, series_id) VALUES ("Game of Thrones", 1999, 1);
INSERT INTO books (title, year, series_id) VALUES ("Storm of Swords", 2005, 1);
INSERT INTO books (title, year, series_id) VALUES ("Dance with Dragons", 2013, 1);
INSERT INTO books (title, year, series_id) VALUES ("Girl on Fire", 2008, 2);
INSERT INTO books (title, year, series_id) VALUES ("Girl Shoots Arrows", 2010, 2);
INSERT INTO books (title, year, series_id) VALUES ("Mockingjay", 2012, 2);

INSERT INTO characters (name, species, motto, series_id, author_id) VALUES ("Tyrion", "Human", "Women & Wine", 1, 1);
INSERT INTO characters (name, species, motto, series_id, author_id) VALUES ("Jaime Lannister", "Human", "Where's my hand?", 1, 1);
INSERT INTO characters (name, species, motto, series_id, author_id) VALUES ("Danarys", "Human", "Dragons on Dragons on Dragons", 1, 1);
INSERT INTO characters (name, species, motto, series_id, author_id) VALUES ("Rob Stark", "Human", "I'm super dead", 1, 1);
INSERT INTO characters (name, species, motto, series_id, author_id) VALUES ("Arrow Girl", "Human", "TO THE CAPITAL!", 2, 2);
INSERT INTO characters (name, species, motto, series_id, author_id) VALUES ("Woody Harrelson", "Human", "I'm wearing a wig", 2, 2);
INSERT INTO characters (name, species, motto, series_id, author_id) VALUES ("Philip Hoffman", "Human", "I'm in charge here", 2, 2);
INSERT INTO characters (name, species, motto, series_id, author_id) VALUES ("Julianne Moore", "Human", "Now I'm in charge", 2, 2);

INSERT INTO character_books (book_id, character_id) VALUES (1, 1);
INSERT INTO character_books (book_id, character_id) VALUES (2, 1);
INSERT INTO character_books (book_id, character_id) VALUES (3, 1);
INSERT INTO character_books (book_id, character_id) VALUES (1, 2);
INSERT INTO character_books (book_id, character_id) VALUES (2, 2);
INSERT INTO character_books (book_id, character_id) VALUES (3, 2);
INSERT INTO character_books (book_id, character_id) VALUES (1, 3);
INSERT INTO character_books (book_id, character_id) VALUES (2, 4);

INSERT INTO character_books (book_id, character_id) VALUES (1, 5);
INSERT INTO character_books (book_id, character_id) VALUES (2, 5);
INSERT INTO character_books (book_id, character_id) VALUES (3, 5);
INSERT INTO character_books (book_id, character_id) VALUES (1, 6);
INSERT INTO character_books (book_id, character_id) VALUES (2, 6);
INSERT INTO character_books (book_id, character_id) VALUES (3, 6);
INSERT INTO character_books (book_id, character_id) VALUES (1, 7);
INSERT INTO character_books (book_id, character_id) VALUES (2, 8);
