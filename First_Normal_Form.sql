-- create table for pokemon data
CREATE TABLE pokemon (
    pokedex_number INTEGER PRIMARY KEY,
    abilities TEXT NOT NULL, -- abilities will be separated into a separate table
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
    
-- import the csv data into the table
.mode csv
.import pokemon.csv pokemon

-- create the pokemon_abilities table
CREATE TABLE pokemon_abilities (
    pokedex_number INTEGER NOT NULL,
    ability TEXT NOT NULL,
    PRIMARY KEY (pokedex_number, ability),
    FOREIGN KEY (pokedex_number) REFERENCES pokemon (pokedex_number)
);

-- populate the pokemon_abilities table by splitting the abilities column in the pokemon table
INSERT INTO pokemon_abilities (pokedex_number, ability)
WITH ability_table (pokedex_number, abilities, next_abilities) AS (
    SELECT pokedex_number, '' AS abilities, abilities||',' AS next_abilities
    FROM pokemon
    UNION ALL
        SELECT pokedex_number,
            substr(next_abilities, 0, instr(next_abilities, ',')) AS abilities,
            substr(next_abilities, instr(next_abilities, ',')+1) AS next_abilities
        FROM ability_table
        WHERE next_abilities !=''
)
SELECT pokedex_number, abilities
FROM ability_table
WHERE abilities !='';

-- drop the original abilities column from the pokemon table
ALTER TABLE pokemon
DROP COLUMN abilities;