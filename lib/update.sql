-- SELECT species FROM characters WHERE id=(SELECT MAX(id) FROM characters);
UPDATE characters SET species = "Martian" WHERE id = 8;
