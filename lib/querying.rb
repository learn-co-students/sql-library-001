require 'pry'

def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books
  WHERE series_id = 1
  ORDER BY books.year
  ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters
  WHERE length(motto) = (SELECT MAX(length(motto)) FROM characters);"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) from characters
  GROUP BY species
  ORDER BY COUNT(species)
  DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors
  INNER JOIN subgenres
  ON authors.id = series.author_id
  INNER JOIN series
  ON subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
  INNER JOIN characters
  ON series.id = characters.series_id
  WHERE series.id = 
    (SELECT series_id FROM
    characters
    WHERE species = 'human'
    GROUP BY series_id
    ORDER BY COUNT(species)
    DESC
    LIMIT 1)
  LIMIT 1
  ;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(character_books.book_id) FROM characters
  INNER JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY count(character_books.book_id)
  DESC;"
end
