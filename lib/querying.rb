def select_books_titles_and_years_in_first_series_order_by_year
  # SELECT title, year FROM books | SELECT series_id from books = 1
  # [["Game of Thrones", 1996], ["A Clash of Kings", 1998], ["A Storm of Swords", 2000]]
  "SELECT title, year
  FROM books
  WHERE series_id = 1
  ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  # name, motto FROM characters | MAX(motto)
  "SELECT name, motto
  FROM characters
  GROUP BY motto
  HAVING MAX(length(motto))
  LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  # returns ["human", 4]
  # SELECT species FROM characters | COUNT each different species | DISTINCT
  # "SELECT MAX(species) FROM characters GROUP BY species HAVING ;"
  "SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(species)
  DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  # returns: ["George R. R. Martin", "medieval"], ["Second Author", "space opera"]
  "SELECT authors.name, subgenres.name
  FROM authors, subgenres
  INNER JOIN series ON series.author_id = authors.id
  AND series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  # returns ["A Song of Ice and Fire"]
  # characters.species = "human" | series.title | characters.series_id = series.id
  # LIMIT 1 was more hard-coding. I did not figure out how to only grab MAX
  "SELECT title
  FROM series
  INNER JOIN characters
  ON characters.species = 'human'
  GROUP BY series.title
  HAVING MAX(characters.species = 'human')
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  # ["Character Three",3], ["Character Two", 3],["Daenerys Targaryen", 3], ["Tyrion Lanister", 3], ["Character Four", 1], ["Character One", 1], ["Eddard Stark", 1], ["Lady", 1]
  # character_books.book_id | characters.name
  # compare characters.id to character_books.character_id
  # COUNT the number of character appearances in character_books COUNT(character_books.book_id)
  "SELECT characters.name, COUNT(character_books.book_id)
  FROM characters, character_books
  WHERE characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(character_books.book_id) DESC;"
end
