-- create the pokemon table
CREATE TABLE pokemon (
    pokedex_number INTEGER PRIMARY KEY,
    against_bug REAL NOT NULL,
    against_dark REAL NOT NULL,
    against_dragon REAL NOT NULL,
    against_electric REAL NOT NULL,
    against_fairy REAL NOT NULL,
    against_fight REAL NOT NULL,
    against_fire REAL NOT NULL,
    against_flying REAL NOT NULL,
    against_ghost REAL NOT NULL,
    against_grass REAL NOT NULL,
    against_ground REAL NOT NULL,
    against_ice REAL NOT NULL,
    against_normal REAL NOT NULL,
    against_poison REAL NOT NULL,
    against_psychic REAL NOT NULL,
    against_rock REAL NOT NULL,
    against_steel REAL NOT NULL,
    against_water REAL NOT NULL,
    attack INTEGER NOT NULL,
    base_egg_steps INTEGER NOT NULL,
    base_happiness INTEGER NOT NULL,
    base_total INTEGER NOT NULL,
    capture_rate INTEGER NOT NULL,
    classification TEXT NOT NULL,
    defense INTEGER NOT NULL,
    experience_growth INTEGER NOT NULL,
    height_m REAL NOT NULL,
    hp INTEGER NOT NULL,
    name TEXT NOT NULL,
    percentage_male REAL,
    sp_attack INTEGER NOT NULL,
    sp_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL,
    type1 TEXT NOT NULL,
    type2 TEXT,
    weight_kg REAL NOT NULL,
    generation INTEGER NOT NULL,
    is_legendary INTEGER
);

-- import the csv data into the pokemon table
.mode csv
.import pokemon.csv pokemon

-- create the abilities table
CREATE TABLE abilities (
    ability_id INTEGER PRIMARY KEY,
    ability_name TEXT NOT NULL
);

-- create the pokemon_abilities table
CREATE TABLE pokemon_abilities (
    pokedex_number INTEGER NOT NULL,
    ability_id INTEGER NOT NULL,
    PRIMARY KEY (pokedex_number, ability_id),
    FOREIGN KEY (pokedex_number) REFERENCES pokemon (pokedex_number),
    FOREIGN KEY (ability_id) REFERENCES abilities (ability_id)
);

-- populate the abilities table with unique ability names
INSERT INTO abilities (ability_id, ability_name)
SELECT DISTINCT NULL, abilities FROM pokemon_1nf
WHERE abilities != '';

-- populate the pokemon_abilities table by joining the abilities and pokemon tables
INSERT INTO pokemon_abilities (pokedex_number, ability_id)
SELECT pokedex_number, ability_id
FROM pokemon_1nf
JOIN abilities ON abilities.ability_name = pokemon_1nf.abilities;

-- drop the abilities column from the pokemon table
ALTER TABLE pokemon
DROP COLUMN abilities;