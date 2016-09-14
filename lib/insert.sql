INSERT INTO series (id, title, author_id, subgenre_id) VALUES (1, "Harry Potter", 1, 1), (2, "Game of Thrones", 2, 2);

INSERT INTO subgenres (id, name)VALUES (1, 'Epic Fantasy'), (2, 'Urban Fantasy');

INSERT INTO authors (id, name) VALUES (1,'J. K. Rowling'), (2, 'Art Spiegelman');

INSERT INTO books (id, title, year, series_id) VALUES (1, 'Harry Potter and the Philosophers Stone', 1997, 1),
  (2, 'Harry Potter and the Chamber of Secrets', 1998, 1),
  (3, 'Harry Potter and the Half-Blood Prince', 2005, 1),
  (4, 'A Game of Thrones', 1996, 2),
  (5, 'A Storm of Swords', 2000, 2),
  (6, 'A Dance with Dragons', 2011, 2);

--of each of those 4,
--make 2 in all of the books in a series, and
--2 in just 1 book in a series

INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (1, 'Harry Potter', 'Find the horcrux', 'Wizard', 1, 1),
  (2, 'Ron Weasley', 'Dont fuck up', 'Some Other Wizard', 1, 1),
  (3, 'Viktor Krum', 'I am a Seeker!', 'Seeker', 1, 1),
  (4, 'Xenophilius Lovegood', 'Cool deathly hollows story', 'Deathly Hallows guy', 1, 1),
  (5, 'Viserys Targaryen', 'I want an army', 'Some Guy Who Likes Dragons', 2, 2),
  (6, 'Daenerys Targaryen', 'Free the slaves', 'Mother od Dragons', 2, 2),
  (7, 'Arya Stark', 'I am Arya Stark, not faceless', 'Arya', 2, 2),
  (8, 'Robert Baratheon', 'Drink all Day', 'Dead King', 2, 2);

INSERT INTO character_books (id, book_id, character_id) VALUES
                            (1, 1, 4),
                            (2, 1, 5),
                            (3, 1, 6),
                            (4, 2, 4),
                            (5, 2, 5),
                            (6, 2, 6),
                            (7, 3, 6),
                            (8, 4, 5),
                            (9, 5, 1),
                            (10, 5, 2),
                            (11, 5, 3),
                            (12, 6, 1),
                            (13, 6, 2),
                            (14, 6, 3),
                            (15, 7, 2),
                            (16, 8, 1);
