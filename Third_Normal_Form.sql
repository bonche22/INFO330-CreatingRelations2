-- create the pokemon_name table
CREATE TABLE pokemon_name (
    pokedex_number INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    FOREIGN KEY (pokedex_number) REFERENCES pokemon (pokedex_number)
);

-- populate the pokemon_name table
INSERT INTO pokemon_name (pokedex_number, name)
SELECT pokedex_number, name
FROM pokemon;


-- create the pokemon_abilities table (same as Second Normal Form)


-- create the pokemon_against table
CREATE TABLE pokemon_against (
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
    FOREIGN KEY (pokedex_number) REFERENCES pokemon_abilities (pokedex_number)
);

-- populate the pokemon_against table
INSERT INTO pokemon_against ( pokedex_number, against_bug, against_dark, against_dragon,
    against_electric, against_fairy, against_fight, against_fire, against_flying,
    against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison,
    against_psychic, against_rock, against_steel, against_water)
SELECT pokedex_number, against_bug, against_dark, against_dragon,
    against_electric, against_fairy, against_fight, against_fire, against_flying,
    against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison,
    against_psychic, against_rock, against_steel, against_water
FROM pokemon;


-- create the pokemon_characteristic table
CREATE TABLE pokemon_characteristic (
    pokedex_number INTEGER PRIMARY KEY,
    classfication TEXT NOT NULL,
    is_legendary INTEGER,
    generation INTEGER NOT NULL,
    capture_rate INTEGER NOT NULL,
    experience_growth INTEGER NOT NULL,
    percentage_male REAL,
    FOREIGN KEY (pokedex_number) REFERENCES pokemon_name (pokedex_number)
);

-- populate the pokemon_characteristic table
INSERT INTO pokemon_characteristic (pokedex_number, classfication, is_legendary,
    generation, capture_rate, experience_growth, percentage_male)
SELECT pokedex_number, classfication, is_legendary, generation, capture_rate,
    experience_growth, percentage_male
FROM pokemon;


-- create the pokemon_types table
CREATE TABLE pokemon_types (
    pokedex_number INTEGER PRIMARY KEY,
    type1 TEXT NOT NULL,
    type2 TEXT,
    FOREIGN KEY (pokedex_number) REFERENCES pokemon_characteristic (pokedex_number)
);

-- populate the pokemon_types table
INSERT INTO pokemon_types (pokedex_number, type1, type2)
SELECT pokedex_number, type1, type2
FROM pokemon;


-- create the pokemon_external_value table
CREATE TABLE pokemon_external_value (
    pokedex_number INTEGER PRIMARY KEY,
    height_m REAL NOT NULL,
    weight_kg REAL NOT NULL,
    FOREIGN KEY (pokedex_number) REFERENCES pokemon_characteristic (pokedex_number)
);

-- populate the pokemon_external_value table
INSERT INTO pokemon_external_value (pokedex_number, height_m, weight_kg)
SELECT pokedex_number, height_m, weight_kg
FROM pokemon;


-- create the pokemon_base table
CREATE TABLE pokemon_base (
    pokedex_number INTEGER PRIMARY KEY,
    base_total INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    sp_attack INTEGER NOT NULL,
    sp_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL,
    hp INTEGER NOT NULL,
    base_egg_steps INTEGER NOT NULL,
    base_happiness INTEGER NOT NULL,
    FOREIGN KEY (pokedex_number) REFERENCES pokemon_name (pokedex_number)
);

-- populate the pokemon_base table
INSERT INTO pokemon_base (pokedex_number, base_total, attack, defense, sp_attack,
    sp_defense, speed, hp, base_egg_steps, base_happiness)
SELECT pokedex_number, base_total, attack, defense, sp_attack,
    sp_defense, speed, hp, base_egg_steps, base_happiness
FROM pokemon;