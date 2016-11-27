\c pokemon;
CREATE EXTENSION pgcrypto;

DROP TABLE pokeImages;
CREATE TABLE pokeImages (
  ID serial NOT NULL,
  pokemonName varchar(50) NOT NULL,
  imageURL varchar(5000) NOT NULL,
  PRIMARY KEY  (ID)
) ;

INSERT INTO pokeImages (name, weight, height, male, female)  VALUES ('Bulbasaur', 15.2, 2.04, 87.5, 12.5);
