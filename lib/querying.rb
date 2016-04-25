def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  #"SELECT name, motto FROM characters WHERE Len(motto) = Max(motto);"
  "SELECT name, motto FROM characters
  ORDER BY motto Limit 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, Count(species) FROM characters
  GROUP BY species
  ORDER BY Count(species) DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors, subgenres, series
  WHERE author_id = authors.id AND subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT title FROM series, characters
  WHERE species = 'human'
  ORDER BY species LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, Count(book_id) FROM characters, character_books
  WHERE characters.id = character_books.character_id
  GROUP BY name
  ORDER BY Count(book_id) DESC;"
end
