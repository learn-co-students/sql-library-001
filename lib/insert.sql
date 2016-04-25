INSERT INTO series (id, author_id, subgenre_id) VALUES
                   (1, 1, 2),
                   (2, 2, 1);



INSERT INTO subgenres (id, name) VALUES
                      (1, "contemporary"),
                      (2, "medieval epic");


INSERT INTO authors (id, name) VALUES
                    (1, "J.R.R. Tolkien"),
                    (2, "J.K. Rowling");


INSERT INTO books (id, title, year, series_id) VALUES
                  (1, "The Fellowship of the Ring", 1954, 1),
                  (2, "The Two Towers", 1954, 1),
                  (3, "The Return of the King", 1955, 1),
                  (4, "Harry Potter and the Sorcerer's Stone", 1999, 2),
                  (5, "Harry Potter and the Chamber of Secrets", 2000, 2),
                  (6, "Harry Potter and the Prisoner of Azkaban", 2001, 2);


INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES
                        (1, "Harry Potter", "Lightening shaped scars are a bummer", "human", 2, 2),
                        (2, "Ron Weasley", "Go Gryffindor!", "human", 2, 2),
                        (3, "Cornelius Fudge", "Mmmmm, fudge","human", 2, 2),
                        (4, "Moaning Myrtle", "Moooan", "spirit", 2, 2),
                        (5, "Legolas", "I sure am pretty", "elf", 1, 1),
                        (6, "Frodo", "I like jewelry", "hobbit", 1, 1),
                        (7, "Isildur", "You can call me prince", "human", 1, 1),
                        (8, "Bilbo Baggins", "Don't need no stinking ring", "hobbit", 1, 1);


INSERT INTO character_books (id, character_id, book_id) VALUES
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


