-- create a new table, `trainer`, which consists of `first_name` and `last_name` (both string types not longer than 80 characters). 
CREATE TABLE trainer (
  first_name TEXT(80) NOT NULL,
  last_name TEXT(80) NOT NULL
);

--Trainers can have multiple `favorite_pokemon_types`, and have Pokemon teams that can have up to ten Pokemon each on them. Make sure you stay in Third Normal Form, and add several trainers to the database: myself, your TA, yourself, and a friend or colleague from the class. You may assign to us any Pokemon you think would be on our team, but beware! Giving me a Cougarite could hurt your grade! (Just kidding.)

-- create table for favorite_pokemon_types
CREATE TABLE favorite_pokemon_types (
    trainer_id INTEGER NOT NULL,
    type TEXT NOT NULL,
    FOREIGN KEY (trainer_id) REFERENCES trainer (id)
);

-- create table for pokemon_teams
CREATE TABLE pokemon_teams (
    trainer_id INTEGER NOT NULL,
    pokemon_id INTEGER NOT NULL,
    FOREIGN KEY (trainer_id) REFERENCES trainer (id),
    FOREIGN KEY (pokemon_id) REFERENCES pokemon (pokedex_number)
);

-- add trainers
INSERT INTO trainer (first_name, last_name) VALUES ('Ted', 'Neward');
INSERT INTO trainer (first_name, last_name) VALUES ('Justin', 'Dong');
INSERT INTO trainer (first_name, last_name) VALUES ('Bonnie', 'Chen');
INSERT INTO trainer (first_name, last_name) VALUES ('Bella', 'Yuan');

-- add favorite Pokemon types
INSERT INTO favorite_pokemon_types (trainer_id, type) VALUES (1, 'Electric');
INSERT INTO favorite_pokemon_types (trainer_id, type) VALUES (2, 'Water');
INSERT INTO favorite_pokemon_types (trainer_id, type) VALUES (3, 'Rock');
INSERT INTO favorite_pokemon_types (trainer_id, type) VALUES (4, 'Fire');

-- add Pokemon teams
INSERT INTO pokemon_teams (trainer_id, pokemon_id) VALUES (1, 25);
INSERT INTO pokemon_teams (trainer_id, pokemon_id) VALUES (1, 1);
INSERT INTO pokemon_teams (trainer_id, pokemon_id) VALUES (1, 4);
INSERT INTO pokemon_teams (trainer_id, pokemon_id) VALUES (2, 120);
INSERT INTO pokemon_teams (trainer_id, pokemon_id) VALUES (2, 121);
INSERT INTO pokemon_teams (trainer_id, pokemon_id) VALUES (2, 54);
INSERT INTO pokemon_teams (trainer_id, pokemon_id) VALUES (3, 74);
INSERT INTO pokemon_teams (trainer_id, pokemon_id) VALUES (3, 95);
INSERT INTO pokemon_teams (trainer_id, pokemon_id) VALUES (3, 208);
INSERT INTO pokemon_teams (trainer_id, pokemon_id) VALUES (4, 4);
INSERT INTO pokemon_teams (trainer_id, pokemon_id) VALUES (4, 7);
INSERT INTO pokemon_teams (trainer_id, pokemon_id) VALUES (4, 25);