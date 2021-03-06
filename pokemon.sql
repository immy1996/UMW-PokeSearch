DROP DATABASE pokemon;
CREATE DATABASE pokemon;
\c pokemon;
DROP TABLE pokemon;
DROP TABLE PossibleTypes;
DROP TABLE users;
DROP TABLE types;
DROP TABLE typeEffective;
DROP TABLE msgs;
-- Table structure for table pokemon
--

DROP TABLE pokemon;
CREATE TABLE pokemon (
  ID serial NOT NULL,
  name varchar(35)  NOT NULL,
  image varchar(50) NOT NULL,
  weight decimal NOT NULL,
  height decimal NOT NULL,
  male decimal NOT NULL,
  female decimal NOT NULL,
  hp integer NOT NULL,
  attack integer NOT NULL,
  defense integer NOT NULL,
  sp_attack integer NOT NULL,
  sp_defense integer NOT NULL,
  speed integer NOT NULL,
  total_rating integer NOT NULL,
  evolves_into varchar(100) NOT NULL,
  PRIMARY KEY  (ID)
) ;

--
-- Dumping data for table pokemon
--
-- ORDER BY:  ID
-- INSERT INTO pokemon (name, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ();
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Bulbasaur', 'Bulbasaur.jpg',  15.2, 2.04, 87.5, 12.5, 45, 49, 49, 65, 65, 45, 318, 'Ivysaur');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Ivysaur', 'Ivysaur.jpg', 28.7, 3.03, 87.5, 12.5, 60, 62, 63, 80, 80, 60, 405, 'Venusaur');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Venusaur', 'Venusaur.jpg', 220.5, 6.07, 87.5, 12.5, 80, 82, 83, 100, 100, 80, 525, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Charmander', 'Charmander.jpg', 18.7, 2.00, 87.5, 12.5, 39, 52, 43, 60, 50,65,309, 'Charmeleon');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Charmeleon', 'Charmeleon.jpg', 41.9, 3.07, 87.5, 12.5, 58,64,58,80,65,80,405, 'Charizard');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Charizard', 'Charizard.jpg', 199.5, 5.07, 87.5, 12.5,78,84,78,109,85,100,534, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Squirtle', 'Squirtle.jpg', 19.8, 1.08, 87.5, 12.5,44,48,65,50,64,43,314, 'Wartortle');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Wartortle', 'Wartortle.jpg', 49.6, 3.03, 87.5, 12.5,59,63,80,65,80,58,405, 'Blastoise');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Blastoise', 'Blastoise.jpg', 188.5, 5.03, 87.5, 12.5, 79,83,100,85,105,78,530, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Caterpie', 'Caterpie.jpg', 6.4, 1.00, 50.0, 50.0, 45, 30, 35, 20, 20, 45, 195, 'Metapod');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Metapod', 'Metapod.jpg', 21.8, 2.04, 50.0, 50.0, 50,20, 55, 25, 25, 30, 205, 'Butterfree');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Butterfree', 'Butterfree.jpg',  70.5, 3.07, 50.0, 50.0, 60,45,50,90,80,70,395, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Weedle', 'Weedle.jpg', 7.1, 1.00, 50.0, 50.0, 40, 35, 30, 20, 20, 50, 195, 'Kakuna');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Kakuna', 'Kakuna.jpg', 22.0, 2.00, 50.0, 50.0, 45, 25, 50, 25, 25, 35, 205, 'Beedrill');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Beedrill', 'Beedrill.jpg', 65.0, 3.03, 50.0, 50.0, 65, 90, 40, 45, 80, 75, 395, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Pidgey', 'Pidgey.jpg', 4.0, 1.00, 50.0, 50.0, 40, 45, 40, 35, 35, 56, 251, 'Pidgeotto');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Pidgeotto', 'Pidgeotto.jpg', 66.1, 3.07, 50.0, 50.0, 63, 60, 55, 50, 50, 71, 349, 'Pidgeot');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Pidgeot', 'Pidgeot.jpg', 87.1, 4.11, 50.0, 50.0, 83, 80, 75, 70, 70, 101, 479, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Rattata', 'Rattata.jpg', 7.7, 1.00, 50.0, 50.0, 30, 56, 35, 25, 35, 72, 253, 'Raticate');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Raticate', 'Raticate.jpg', 40.8, 2.04, 50.0, 50.0, 55, 81, 60, 50, 70, 97, 413, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Spearow', 'Spearow.jpg', 4.4, 1.00, 50.0, 50.0, 40, 60, 30, 31, 31, 70, 262, 'Fearow');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Fearow', 'Fearow.jpg', 83.8, 3.11, 50.0, 50.0, 65, 90, 65, 61, 61, 100, 442, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Ekans', 'Ekans.jpg', 15.2, 6.07, 50.0, 50.0, 35, 60, 44, 40, 54, 55, 288, 'Arbok');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Arbok', 'Arbok.jpg', 143.3, 11.06, 50.0, 50.0, 60, 85, 69, 65, 79, 80, 438, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Pikachu', 'Pikachu.jpg', 13.2, 1.04, 50.0, 50.0, 35, 55, 40, 50, 50, 90, 320, 'Raichu');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Raichu', 'Raichu.jpg', 66.1, 2.07, 50.0, 50.0, 60, 90, 55, 90, 80, 110, 485, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Sandshrew', 'Sandshrew.jpg', 26.5, 2.00, 50.0, 50.0, 50, 75, 85, 20, 30, 40, 300, 'Sandslash');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Sandslash', 'Sandslash.jpg', 65.0, 3.03, 50.0, 50.0, 75, 100, 110, 45, 55, 65, 450, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Nidoran', 'NidoranF.jpg', 15.4, 1.04, 0.0, 100.0, 55, 47, 52, 40, 40, 41, 275, 'Nidorina');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Nidorina', 'Nidorina.jpg', 44.1, 2.07, 0.0, 100.0, 70, 62, 67, 55, 55, 56, 365, 'Nidoqueen');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Nidoqueen', 'Nidoqueen.jpg', 132.3, 4.03, 0.0, 100.0, 90, 92, 87, 75, 85, 76, 505, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Nidoran', 'NidoranM.jpg', 19.8, 1.07, 100.0, 0.0, 46, 57, 40, 40, 40, 50, 273, 'Nidorino');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Nidorino', 'Nidorino.jpg', 43.0, 2.11, 100.0, 0.0, 61, 72, 57, 55, 55, 65, 365, 'Nidoking');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Nidoking', 'Nidoking.jpg', 136.7, 4.07, 100.0, 0.0, 81, 102, 77, 85, 75, 85, 505, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Clefairy', 'Clefairy.jpg', 16.5, 2.00, 25.0, 75.0, 70, 45, 48, 60, 65, 35, 323, 'Clefable');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Clefable', 'Clefable.jpg', 88.2, 4.03, 25.0, 75.0, 95, 70, 73, 95, 90, 60, 483, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Vulpix', 'Vulpix.jpg', 21.8, 2.00, 25.0, 75.0, 38, 41, 40, 50, 65, 65, 299, 'Ninetails');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Ninetails', 'Ninetails.jpg', 43.9, 3.07, 25.0, 75.0, 73, 76, 75, 81, 100, 100, 505, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Jigglypuff', 'Jigglypuff.jpg', 12.1, 1.08, 25.0, 75.0, 115, 45, 20, 45, 25, 20, 270, 'Wigglytuff');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Wigglytuff', 'Wigglytuff.jpg', 26.5, 3.03, 25.0, 75.0, 140, 70, 45, 85, 50, 45, 435, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Zubat', 'Zubat.jpg', 16.5, 2.07, 50.0, 50.0, 40, 45, 35, 30, 40, 55, 245, 'Golbat');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Golbat', 'Golbat.jpg', 121.3, 5.03, 50.0, 50.0, 75, 80, 70, 65, 75, 90, 455, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Oddish', 'Oddish.jpg', 11.9, 1.08, 50.0, 50.0, 45, 50, 55, 75, 65, 30, 320, 'Gloom');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Gloom', 'Gloom.jpg', 19.0, 2.07, 50.0, 50.0, 60, 65, 70, 85, 75, 40, 395, 'Vileplum');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Vileplum', 'Vileplum.jpg', 41.0, 3.11, 50.0, 50.0, 75, 80, 85, 110, 90, 50, 490, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Paras', 'Paras.jpg', 11.9, 1.00, 50.0, 50.0, 35, 70, 55, 45, 55, 25, 285, 'Parasect');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Parasect', 'Parasect.jpg', 65.0, 3.03, 50.0, 50.0, 60, 95, 80, 60, 80, 30, 405, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Venonat', 'Venonat.jpg', 66.1, 3.03, 50.0, 50.0, 60, 55, 50, 40,55, 45, 305, 'Venomoth');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Venomoth', 'Venomoth.jpg', 27.6, 4.11, 50.0, 50.0, 70, 65, 60, 90, 75, 90, 450, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Diglett', 'Diglett.jpg', 1.8, 0.08, 50.0, 50.0, 10, 55, 25, 35, 45, 95, 265, 'Dugtrio');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Dugtrio', 'Dugtrio.jpg', 73.4, 2.04, 50.0, 50.0, 35, 80, 50, 50, 70, 120, 405, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Meowth', 'Meowth.jpg', 9.3, 1.04, 50.0, 50.0, 40, 45, 35, 40, 40, 90, 290, 'Persian');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Persian', 'Persian.jpg', 70.6, 3.03, 50.0, 50.0, 65, 70, 60, 65, 65, 115, 440, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Psyduck', 'Psyduck.jpg', 43.2, 2.07, 50.0, 50.0, 50, 52, 48, 65, 50, 55, 320, 'Golduck');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Golduck', 'Golduck.jpg', 168.9, 5.07, 50.0, 50.0, 80, 82, 78, 95, 80, 85, 500, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Mankey', 'Mankey.jpg', 61.7, 1.08, 50.0, 50.0, 40, 80, 35, 35, 45, 70, 305, 'Primeape');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Primeape', 'Primeape.jpg', 70.5, 3.03, 50.0, 50.0, 65, 105, 60, 60, 70, 95, 455, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Growlithe', 'Growlithe.jpg', 41.9, 2.04, 75.0, 25.0, 55, 70, 45, 70, 50, 60, 350, 'Arcanine');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Arcanine', 'Arcanine.jpg', 341.7, 6.03, 75.0, 25.0, 90, 110, 80, 100, 80, 95, 555, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Poliwag', 'Poliwag.jpg', 27.3, 2.00, 50.0, 50.0, 40, 50, 40, 40, 40,90, 300, 'Poliwhirl');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Poliwhirl', 'Poliwhirl.jpg', 44.0, 3.03, 50.0, 50.0, 65, 65, 65, 50, 50, 90, 385, 'Poliwrath');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Poliwrath', 'Poliwrath.jpg', 119.0, 4.03, 50.0, 50.0, 90, 95, 95, 70, 90, 70, 510, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Abra', 'Abra.jpg', 43.0, 2.11, 75.0, 25.0, 25, 20, 15, 105, 55, 90, 310, 'Kadabra');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Kadabra', 'Kadabra.jpg', 124.6, 4.03, 75.0, 25.0, 40, 35, 30, 120, 70, 105, 400, 'Alakazam');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Alakazam', 'Alakazam.jpg', 105.8, 4.11, 75.0, 25.0, 55, 50, 45, 135, 95, 120, 500, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Machop', 'Machop.jpg', 43.0, 2.07, 75.0, 25.0, 70, 80, 50, 35, 35, 35, 305, 'Machoke');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Machoke', 'Machoke.jpg', 155.0, 4.11, 75.0, 25.0, 80, 100, 70, 50, 60, 45, 405, 'Machamp');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Machamp', 'Machamp.jpg', 286.6, 5.03, 75.0, 75.0, 90, 130, 80, 65, 85, 55, 505, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Bellsprout', 'Bellsprout.jpg', 8.8, 2.04, 50.0, 50.0, 50, 75, 35, 70, 30, 40, 300, 'Weepinbell');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Weepinbell', 'Weepinbell.jpg', 14.1, 3.03, 50.0, 50.0, 60, 90, 50, 85, 45, 55, 390, 'Victreebel');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Victreebel', 'Victreebel.jpg', 34.2, 5.07, 50.0, 50.0, 80, 105, 65, 100, 70, 70, 490, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Tentacool', 'Tentacool.jpg', 100.3, 2.11, 50.0, 50.0, 40, 40, 35, 50, 100, 70, 335, 'Tentacruel');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Tentacruel', 'Tentacruel.jpg', 121.3, 5.03, 50.0, 50.0, 80, 70, 65, 80, 120, 100, 515, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Geodude', 'Geodude.jpg', 44.1, 1.04, 50.0, 50.0, 40, 80, 100, 30, 30, 20, 300, 'Graveler');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Graveler', 'Graveler.jpg', 231.5, 3.03, 50.0, 50.0, 55, 95, 115, 45, 45, 35, 390, 'Golem');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Golem', 'Golem.jpg', 661.4, 4.07, 50.0, 50.0, 80, 120, 130, 55, 65, 45, 495, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Ponyta', 'Ponyta.jpg', 66.1, 3.03, 50.0, 50.0, 50, 85, 55, 65, 65, 90, 410, 'Rapidash');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Rapidash', 'Rapidash.jpg', 209.4, 5.07, 50.0, 50.0, 65, 100, 70, 80, 80, 105, 500, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Slowpoke', 'Slowpoke.jpg', 79.4, 3.11, 50.0, 50.0, 90, 65, 65, 40, 40, 15, 315,'Slowbro');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Slowbro', 'Slowbro.jpg', 173.1, 5.03, 50.0, 50.0, 95, 75, 110, 100, 80, 30, 490, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Magnemite', 'Magnemite.jpg', 13.2, 1.00, 0.0, 0.0, 25, 35, 70, 95,55, 45, 325, 'Magneton');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Magneton', 'Magneton.jpg', 132.3, 3.03, 0.0, 0.0, 50, 60, 95, 120, 70, 70, 465, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Farfetch''d', 'Farfetchd.jpg', 33.1, 2.07, 50.0, 50.0, 52, 65, 55, 58, 62, 60, 352, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Doduo', 'Doduo.jpg', 86.4, 4.07, 50.0, 50.0, 35, 85, 45, 35, 35, 75, 310, 'Dudrio');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Dodrio', 'Dodrio.jpg', 187.8, 5.11, 50.0, 50.0, 60, 110, 70, 60, 60, 100, 460, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Seel', 'Seel.jpg', 198.4, 3.07, 50.0, 50.0, 65, 45, 55, 45, 70, 45, 325, 'Dewgong');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Dewgong', 'Dewgong.jpg', 264.6, 5.07, 50.0, 50.0, 90, 70, 80, 70, 95, 70, 475, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Grimer', 'Grimer.jpg', 66.1, 2.11, 50.0, 50.0, 80, 80, 50, 40, 50, 25, 325, 'Muk');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Muk', 'Muk.jpg', 66.1, 3.11, 50.0, 50.0, 105, 105, 75, 65, 100, 50, 500, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Shellder', 'Shellder.jpg', 8.8, 1.00, 50.0, 50.0, 30, 65, 100, 45, 25, 40, 305, 'Cloyster');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Cloyster', 'Cloyster.jpg', 292.1, 4.11, 50.0, 50.0, 50, 95, 180, 85, 45, 70, 525, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Gastly', 'Gastly.jpg', 0.2, 4.03, 50.0, 50.0, 30, 35, 30, 100, 35, 80, 310, 'Haunter');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Haunter', 'Haunter.jpg', 0.2, 5.03, 50.0, 50.0, 45, 50, 45, 115, 55, 95, 405, 'Gengar');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Gengar', 'Gengar.jpg', 89.3, 4.11, 50.0, 50.0, 60, 65, 60, 130, 75, 110, 500, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Onix', 'Onix.jpg', 463.0, 28.10, 50.0, 50.0, 35, 45, 160, 30, 45, 70, 385, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Drowzee', 'Drowzee.jpg', 71.4, 3.03, 50.0, 50.0, 60, 48, 45, 43, 90, 42, 328, 'Hypno');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Hypno', 'Hypno.jpg', 166.7, 5.03, 50.0, 50.0, 85, 73, 70, 73, 115, 67, 483, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Krabby', 'Krabby.jpg', 14.9, 1.04, 50.0, 50.0, 30, 105, 90, 25, 25, 50, 325, 'Kingler');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Kingler', 'Kingler.jpg', 132.3, 4.03, 50.0, 50.0, 55, 130, 115, 50, 50, 75, 475, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Voltorb', 'Voltorb.jpg', 22.9, 1.08, 0.0, 0.0, 40, 30, 50, 55, 55, 100, 330, 'Electrode');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Electrode', 'Electrode.jpg', 146.8, 3.11, 0.0, 0.0, 60, 50, 70, 80, 80, 140, 480, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Exeggcute', 'Exeggcute.jpg', 5.5, 1.04, 50.0, 50.0, 60, 40, 80, 60, 45, 40, 325, 'Exeggutor');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Exeggutor', 'Exeggutor.jpg', 264.6, 6.07, 50.0, 50.0, 95, 95, 85, 125, 65, 55, 520, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Cubone', 'Cubone.jpg', 14.3, 1.04, 50.0, 50.0, 50, 50, 95, 40, 50, 35, 320, 'Marowak');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Marowak', 'Marowak.jpg', 99.2, 3.03, 50.0, 50.0, 60, 80, 110, 50, 80, 45, 425, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Hitmonlee', 'Hitmonlee.jpg', 109.8, 4.11, 100.0, 0.0, 50, 120, 53, 35, 110, 87, 455, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Hitmonchan', 'Hitmonchan.jpg', 110.7, 4.07, 100.0, 0.0, 50, 105, 79, 35, 110, 76, 455, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Lickitung', 'Lickitung.jpg', 144.4, 3.11, 50.0, 50.0, 90, 55, 75, 60, 75, 30, 385, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Koffing', 'Koffing.jpg', 2.2, 2.00, 50.0, 50.0, 40, 65, 95, 60, 45, 35, 340, 'Weezing');
INSERT INTO pokemon (name, image,  weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Weezing', 'Weezing.jpg', 20.9, 3.11, 50.0, 50.0, 65, 90, 120, 85, 70, 60, 490, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Rhyhorn', 'Rhyhorn.jpg', 253.5, 3.03, 50.0, 50.0, 80, 85, 95, 30, 30, 25, 345, 'Rhydon');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Rhydon', 'Rhydon.jpg', 264.6, 6.03, 50.0, 50.0, 105, 130, 120, 45, 45, 40, 485, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Chansey', 'Chansey.jpg', 76.3, 3.07, 0.0, 100.0, 250, 5, 5, 35, 105, 50, 450, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Tangela', 'Tangela.jpg', 77.2, 3.03, 50.0, 50.0, 65, 55, 115, 100, 40, 60, 435, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Kangaskhan', 'Kangaskhan.jpg', 176.4, 7.03, 0.0, 100.0, 105, 95, 80, 40, 80, 90, 490, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Horsea', 'Horsea.jpg', 17.6, 1.04, 50.0, 50.0, 30, 40, 70, 70, 25, 60, 295, 'Seadra');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Seadra', 'Seadra.jpg', 55.1, 3.11, 50.0, 50.0, 55, 65, 95, 95, 45, 85, 440, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Goldeen', 'Goldeen.jpg', 33.1, 2.00, 50.0, 50.0, 45, 67, 60, 35, 50, 63, 320, 'Seaking');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Seaking', 'Seaking.jpg', 86.0, 4.03, 50.0, 50.0, 80, 92, 65, 65, 80, 68, 450, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Staryu', 'Staryu.jpg', 76.1, 2.07, 0.0, 0.0, 30, 45, 55, 70, 55, 85, 340, 'Starmie');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Starmie', 'Starmie.jpg', 176.4, 3.07, 0.0, 0.0, 60, 75, 85, 100, 85, 115, 520, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Mr. Mime', 'MrMime.jpg', 120.1, 4.03, 50.0, 50.0, 60, 75, 85, 100, 85, 115, 520, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Scyther', 'Scyther.jpg', 123.5, 4.11, 50.0, 50.0, 70, 110, 80, 55, 80, 105, 500, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Jynx', 'Jynx.jpg', 89.5, 4.07, 0.0, 100.0, 65, 50, 35, 115, 95, 95, 455, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Electabuzz', 'Electabuzz.jpg', 66.1, 3.07, 75.0, 25.0, 65, 83, 57, 95, 85, 105, 490, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Magmar', 'Magmar.jpg', 98.1, 4.03, 75.0, 25.0, 65, 95, 57, 100, 85, 93, 495, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Pinsir', 'Pinsir.jpg', 121.3, 4.11, 50.0, 50.0, 65, 125, 100, 55, 70, 85, 500, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Tauros', 'Tauros.jpg', 194.9, 4.07, 100.0, 0.0, 75, 100, 95, 40, 70, 110, 490, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Magikarp', 'Magikarp.jpg', 22.0, 2.11, 50.0, 50.0, 20, 10, 55, 15, 20, 80, 200, 'Gyarados');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Gyarados', 'Gyarados.jpg', 518.1, 21.04, 50.0, 50.0, 95, 125, 79, 60, 100, 81, 540, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Lapras', 'Lapras.jpg', 485.0, 8.02, 50.0, 50.0, 130, 85, 80, 85, 95, 60, 535, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Ditto', 'Ditto.jpg', 8.8, 1.00, 0.0, 0.0, 48, 48, 48, 48, 48, 48, 288, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Eevee', 'Eevee.jpg', 14.3, 1.00, 87.5, 12.5, 55, 55, 50, 45, 65, 55, 325, 'Vaporeon, Jolteon, Flareon');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Vaporeon', 'Vaporeon.jpg', 29.0, 1.0, 87.5, 12.5, 130, 65, 60, 110, 95, 65, 525, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Jolteon', 'Jolteon.jpg', 54.0, 2.07, 87.5, 12.5, 65, 65, 60, 110, 95, 130, 525, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Flareon', 'Flareon.jpg', 55.1, 2.11, 87.5, 12.5, 65, 130, 60, 95, 110, 65, 525, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Porygon', 'Porygon.jpg', 80.5, 2.07, 0.0, 0.0, 65, 60, 70, 85, 75, 40, 395, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Omanyte', 'Omanyte.jpg', 16.5, 1.05, 87.5, 12.5, 35, 40, 100, 90, 55, 35, 355, 'Omastar');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Omastar', 'Omastar.jpg', 77.2, 3.03, 87.5, 12.5, 70, 60, 125, 115, 70, 55, 495, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Kabuto', 'Kabuto.jpg', 25.4, 1.08, 87.5, 12.5, 30, 80, 90, 55, 45, 55, 355, 'Kabutops');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Kabutops', 'Kabutops.jpg', 89.3, 4.03, 87.5, 12.5, 60, 115, 105, 65, 70, 80, 495, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Aerodactyl', 'Aerodactyl.jpg', 130.1, 5.11, 87.5, 12.5, 80, 105, 65, 60, 75, 130, 515, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Snorlax', 'Snorlax.jpg', 1014.1, 6.11, 87.5, 12.5, 160, 110, 65, 65, 110, 30, 540, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Articuno', 'Articuno.jpg', 122.1, 5.07, 0.0, 0.0, 90, 85, 100, 95, 125, 85, 580, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Zapdos', 'Zapdos.jpg', 116.0, 5.03, 0.0, 0.0, 90, 90, 85, 125, 90, 100, 580, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Moltres', 'Moltres.jpg', 132.3, 6.07, 0.0, 0.0, 90, 100, 90, 125, 85, 90, 580, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Dratini', 'Dratini.jpg', 7.3, 5.11, 50.0, 50.0, 41, 64, 45, 50, 50, 50, 300, 'Dragonair');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Dragonair', 'Dragonair.jpg', 36.4, 13.01, 50.0, 50.0, 61, 84, 65, 70, 70, 70, 420, 'Dragonite');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Dragonite', 'Dragonite.jpg', 463.0, 7.03, 50.0, 50.0, 91, 134, 95, 100, 100, 80, 600, 'None');
INSERT INTO pokemon (name,  image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Mewtwo', 'Mewtwo.jpg', 269.0, 6.07, 0.0, 0.0, 106, 110, 90, 154, 90, 130, 680, 'None');
INSERT INTO pokemon (name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into)  VALUES ('Mew', 'Mew.jpg', 8.8, 1.04, 0.0, 0.0, 100, 100, 100, 100, 100, 100, 600, 'None');

CREATE TABLE IF NOT EXISTS PossibleTypes (
  ID serial NOT NULL,
  nameoftype varchar(35)  NOT NULL,
  PRIMARY KEY  (ID)
) ;

INSERT INTO PossibleTypes (nameoftype) VALUES ('bug');
INSERT INTO PossibleTypes (nameoftype) VALUES ('dragon');
INSERT INTO PossibleTypes (nameoftype) VALUES ('ice');
INSERT INTO PossibleTypes (nameoftype) VALUES ('fighting');
INSERT INTO PossibleTypes (nameoftype) VALUES ('fire');
INSERT INTO PossibleTypes (nameoftype) VALUES ('flying');
INSERT INTO PossibleTypes (nameoftype) VALUES ('grass');
INSERT INTO PossibleTypes (nameoftype) VALUES ('ghost');
INSERT INTO PossibleTypes (nameoftype) VALUES ('ground');
INSERT INTO PossibleTypes (nameoftype) VALUES ('electric');
INSERT INTO PossibleTypes (nameoftype) VALUES ('normal');
INSERT INTO PossibleTypes (nameoftype) VALUES ('poison');
INSERT INTO PossibleTypes (nameoftype) VALUES ('psychic');
INSERT INTO PossibleTypes (nameoftype) VALUES ('rock');
INSERT INTO PossibleTypes (nameoftype) VALUES ('water');

CREATE TABLE IF NOT EXISTS types (
  poke_ID INT NOT NULL,
  type_ID INT NOT NULL,
  FOREIGN KEY(poke_ID)
  REFERENCES pokemon(ID),
  FOREIGN KEY(type_ID)
  REFERENCES PossibleTypes(ID)
);



        
INSERT INTO types (poke_ID, type_ID) VALUES (1, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (1, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (2, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (2, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (3, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (3, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (4, 5);
INSERT INTO types (poke_ID, type_ID) VALUES (5, 5);
INSERT INTO types (poke_ID, type_ID) VALUES (6, 5);
INSERT INTO types (poke_ID, type_ID) VALUES (6, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (7, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (8, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (9, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (10, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (11, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (12, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (12, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (13, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (13, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (14, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (14, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (15, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (15, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (16, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (16, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (17, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (17, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (18, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (18, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (19, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (20, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (21, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (32, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (22, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (22, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (23, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (24, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (25, 10);
INSERT INTO types (poke_ID, type_ID) VALUES (26, 10);
INSERT INTO types (poke_ID, type_ID) VALUES (27, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (28, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (29, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (30, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (31, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (31, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (32, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (33, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (34, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (34, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (35, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (36, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (37, 5);
INSERT INTO types (poke_ID, type_ID) VALUES (38, 5);
INSERT INTO types (poke_ID, type_ID) VALUES (39, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (40, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (41, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (41, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (42, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (42, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (43, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (43, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (44, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (44, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (45, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (45, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (46, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (46, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (47, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (47, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (48, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (48, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (49, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (49, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (50, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (51, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (52, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (53, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (54, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (55, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (56, 4);
INSERT INTO types (poke_ID, type_ID) VALUES (57, 4);
INSERT INTO types (poke_ID, type_ID) VALUES (58, 5);
INSERT INTO types (poke_ID, type_ID) VALUES (59, 5);
INSERT INTO types (poke_ID, type_ID) VALUES (60, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (61, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (62, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (62, 4);
INSERT INTO types (poke_ID, type_ID) VALUES (63, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (64, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (65, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (66, 4);
INSERT INTO types (poke_ID, type_ID) VALUES (67, 4);
INSERT INTO types (poke_ID, type_ID) VALUES (68, 4);
INSERT INTO types (poke_ID, type_ID) VALUES (69, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (69, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (70, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (70, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (71, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (71, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (72, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (72, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (73, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (73, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (74, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (74, 14);
INSERT INTO types (poke_ID, type_ID) VALUES (75, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (75, 14);
INSERT INTO types (poke_ID, type_ID) VALUES (76, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (76, 14);
INSERT INTO types (poke_ID, type_ID) VALUES (77, 5);
INSERT INTO types (poke_ID, type_ID) VALUES (78, 5);
INSERT INTO types (poke_ID, type_ID) VALUES (79, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (79, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (80, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (80, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (81, 10);
INSERT INTO types (poke_ID, type_ID) VALUES (82, 10);
INSERT INTO types (poke_ID, type_ID) VALUES (83, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (83, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (84, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (84, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (85, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (85, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (86, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (87, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (87, 3);
INSERT INTO types (poke_ID, type_ID) VALUES (88, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (89, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (90, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (91, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (91, 3);
INSERT INTO types (poke_ID, type_ID) VALUES (92, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (92, 8);
INSERT INTO types (poke_ID, type_ID) VALUES (93, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (93, 8);
INSERT INTO types (poke_ID, type_ID) VALUES (94, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (94, 8);
INSERT INTO types (poke_ID, type_ID) VALUES (95, 14);
INSERT INTO types (poke_ID, type_ID) VALUES (95, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (96, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (97, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (98, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (99, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (100, 10);
INSERT INTO types (poke_ID, type_ID) VALUES (101, 10);
INSERT INTO types (poke_ID, type_ID) VALUES (102, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (102, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (103, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (103, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (104, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (105, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (106, 4);
INSERT INTO types (poke_ID, type_ID) VALUES (107, 4);
INSERT INTO types (poke_ID, type_ID) VALUES (108, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (109, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (110, 12);
INSERT INTO types (poke_ID, type_ID) VALUES (111, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (111, 14);
INSERT INTO types (poke_ID, type_ID) VALUES (112, 9);
INSERT INTO types (poke_ID, type_ID) VALUES (112, 14);
INSERT INTO types (poke_ID, type_ID) VALUES (123, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (114, 7);
INSERT INTO types (poke_ID, type_ID) VALUES (115, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (116, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (117, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (118, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (119, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (120, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (121, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (121, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (122, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (123, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (123, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (124, 3);
INSERT INTO types (poke_ID, type_ID) VALUES (124, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (125, 10);
INSERT INTO types (poke_ID, type_ID) VALUES (126, 5);
INSERT INTO types (poke_ID, type_ID) VALUES (127, 1);
INSERT INTO types (poke_ID, type_ID) VALUES (128, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (129, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (130, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (130, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (131, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (131, 3);
INSERT INTO types (poke_ID, type_ID) VALUES (132, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (133, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (134, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (135, 10);
INSERT INTO types (poke_ID, type_ID) VALUES (136, 5);
INSERT INTO types (poke_ID, type_ID) VALUES (137, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (138, 14);
INSERT INTO types (poke_ID, type_ID) VALUES (138, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (139, 14);
INSERT INTO types (poke_ID, type_ID) VALUES (139, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (140, 14);
INSERT INTO types (poke_ID, type_ID) VALUES (140, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (141, 14);
INSERT INTO types (poke_ID, type_ID) VALUES (141, 15);
INSERT INTO types (poke_ID, type_ID) VALUES (142, 14);
INSERT INTO types (poke_ID, type_ID) VALUES (142, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (143, 11);
INSERT INTO types (poke_ID, type_ID) VALUES (144, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (144, 3);
INSERT INTO types (poke_ID, type_ID) VALUES (145, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (145, 10);
INSERT INTO types (poke_ID, type_ID) VALUES (146, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (146, 5);
INSERT INTO types (poke_ID, type_ID) VALUES (147, 2);
INSERT INTO types (poke_ID, type_ID) VALUES (148, 2);
INSERT INTO types (poke_ID, type_ID) VALUES (149, 2);
INSERT INTO types (poke_ID, type_ID) VALUES (149, 6);
INSERT INTO types (poke_ID, type_ID) VALUES (150, 13);
INSERT INTO types (poke_ID, type_ID) VALUES (151, 13);


CREATE TABLE IF NOT EXISTS users (
ID serial NOT NULL,
username varchar(12) NOT NULL,
password varchar(5000) NOT NULL,
PRIMARY KEY  (ID)
);

CREATE TABLE IF NOT EXISTS msgs (
  id serial,
  username varchar(12) NOT NULL,
  message varchar(5000) NOT NULL,
  PRIMARY KEY (id)
);



CREATE TABLE IF NOT EXISTS typeEffective (
  ID INT NOT NULL,
  other_ID INT NOT NULL,
  FOREIGN KEY(ID)
  REFERENCES PossibleTypes(ID),
  FOREIGN KEY(other_ID)
  REFERENCES PossibleTypes(ID)
);


INSERT INTO typeEffective (id, other_id) VALUES (1,7);
INSERT INTO typeEffective (id, other_id) VALUES (1,13);
INSERT INTO typeEffective (id, other_id) VALUES (2,2);
INSERT INTO typeEffective (id, other_id) VALUES (3,7);
INSERT INTO typeEffective (id, other_id) VALUES (3,9);
INSERT INTO typeEffective (id, other_id) VALUES (3,6);
INSERT INTO typeEffective (id, other_id) VALUES (3,2);
INSERT INTO typeEffective (id, other_id) VALUES (4,11);
INSERT INTO typeEffective (id, other_id) VALUES (4,3);
INSERT INTO typeEffective (id, other_id) VALUES (4,14);
INSERT INTO typeEffective (id, other_id) VALUES (5,7);
INSERT INTO typeEffective (id, other_id) VALUES (5,3);
INSERT INTO typeEffective (id, other_id) VALUES (5,1);
INSERT INTO typeEffective (id, other_id) VALUES (6,1);
INSERT INTO typeEffective (id, other_id) VALUES (6,7);
INSERT INTO typeEffective (id, other_id) VALUES (6,4);
INSERT INTO typeEffective (id, other_id) VALUES (7,15);
INSERT INTO typeEffective (id, other_id) VALUES (7,9);
INSERT INTO typeEffective (id, other_id) VALUES (7,6);
INSERT INTO typeEffective (id, other_id) VALUES (8,8);
INSERT INTO typeEffective (id, other_id) VALUES (8,13);
INSERT INTO typeEffective (id, other_id) VALUES (9,10);
INSERT INTO typeEffective (id, other_id) VALUES (9,5);
INSERT INTO typeEffective (id, other_id) VALUES (9,12);
INSERT INTO typeEffective (id, other_id) VALUES (9,14);
INSERT INTO typeEffective (id, other_id) VALUES (10,15);
INSERT INTO typeEffective (id, other_id) VALUES (10,6);
INSERT INTO typeEffective (id, other_id) VALUES (12,7);
INSERT INTO typeEffective (id, other_id) VALUES (13,12);
INSERT INTO typeEffective (id, other_id) VALUES (13,4);
INSERT INTO typeEffective (id, other_id) VALUES (14,3);
INSERT INTO typeEffective (id, other_id) VALUES (14,5);
INSERT INTO typeEffective (id, other_id) VALUES (14,6);
INSERT INTO typeEffective (id, other_id) VALUES (14,1);
INSERT INTO typeEffective (id, other_id) VALUES (15,9);
INSERT INTO typeEffective (id, other_id) VALUES (15,14);
INSERT INTO typeEffective (id, other_id) VALUES (15,5);







GRANT ALL on users to pokeuser;
GRANT ALL on users_id_seq to pokeuser;
GRANT ALL on pokemon to pokeuser;
GRANT ALL on pokemon_id_seq to pokeuser;
GRANT ALL on types to pokeuser;
GRANT ALL on PossibleTypes to pokeuser;
GRANT ALL on PossibleTypes_id_seq to pokeuser;
GRANT ALL on msgs to pokeuser;
GRANT ALL on msgs_id_seq to pokeuser;
GRANT select on typeEffective to pokeuser;

CREATE EXTENSION pgcrypto;
