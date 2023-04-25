-- Write a SQL script that adds "Huskichu", a "Mascot"-type Pokemon. You may decide for yourself what attacks it has. It has no evolution form. (Huskichu Pokemon are very good, they rival Mew and Mewtwo in power--make sure your data reflects this!)
INSERT INTO pokemon (pokedex_number,
    abilities,
    against_bug,
    against_dark,
    against_dragon,
    against_electric,
    against_fairy,
    against_fight,
    against_fire,
    against_flying,
    against_ghost,
    against_grass,
    against_ground,
    against_ice,
    against_normal,
    against_poison,
    against_psychic,
    against_rock,
    against_steel,
    against_water,
    attack,
    base_egg_steps,
    base_happiness,
    base_total,
    capture_rate,
    classification,
    defense,
    experience_growth,
    height_m,
    hp,
    name,
    percentage_male,
    sp_attack,
    sp_defense,
    speed,
    type1,
    type2,
    weight_kg,
    generation,
    is_legendary
) VALUES (
    999, -- pokedex number for new pokemon
    'Lightning Rod, Volt Absorb', -- abilities for new pokemon
    1, -- against bug
    1, -- against dark
    1, -- against dragon
    0.5, -- against electric
    0.5, -- against fairy
    0.5, -- against fight
    2, -- against fire
    2, -- against flying
    1, -- against ghost
    0.5, -- against grass
    0, -- against ground
    2, -- against ice
    1, -- against normal
    1, -- against poison
    1, -- against psychic
    1, -- against rock
    1, -- against steel
    0.5, -- against water
    200, -- attack
    5120, -- base egg steps
    140, -- base happiness
    800, -- base total
    45, -- capture rate
    'Huskichu Pokemon', -- classification
    60, -- defense
    1059860, -- experience growth
    1.5, -- height in meters
    150, -- hp
    'Huskichu', -- name
    70, -- no percentage_male
    250, -- special attack
    250, -- special defense
    200, -- speed
    'Mascot', -- primary type
    NULL, -- no secondary type
    60, -- weight in kilograms
    1, -- gneration
    1 -- not legendary
);


-- Write another SQL script that adds "Cougarite", another "Mascot"-type Pokemon. Cougarites have one attack, a "Slow Attack", which does no damage. (Cougarite Pokemon are not very good. They lose to Magikarp in most battles.)
INSERT INTO pokemon (pokedex_number,
    abilities,
    against_bug,
    against_dark,
    against_dragon,
    against_electric,
    against_fairy,
    against_fight,
    against_fire,
    against_flying,
    against_ghost,
    against_grass,
    against_ground,
    against_ice,
    against_normal,
    against_poison,
    against_psychic,
    against_rock,
    against_steel,
    against_water,
    attack,
    base_egg_steps,
    base_happiness,
    base_total,
    capture_rate,
    classification,
    defense,
    experience_growth,
    height_m,
    hp,
    name,
    percentage_male,
    sp_attack,
    sp_defense,
    speed,
    type1,
    type2,
    weight_kg,
    generation,
    is_legendary
) VALUES (
    1010, -- pokedex number for new pokemon
    'Slow Start', -- abilities for new pokemon
    1, -- against bug
    1, -- against dark
    1, -- against dragon
    1, -- against electric
    1, -- against fairy
    1, -- against fight
    1, -- against fire
    1, -- against flying
    1, -- against ghost
    1, -- against grass
    1, -- against ground
    1, -- against ice
    1, -- against normal
    1, -- against poison
    1, -- against psychic
    1, -- against rock
    1, -- against steel
    1, -- against water
    0, -- attack
    5120, -- base egg steps
    70, -- base happiness
    220, -- base total
    45, -- capture rate
    'Mascot Pokemon', -- classification
    10, -- defense
    1059860, -- experience growth
    0.3, -- height in meters
    50, -- hp
    'Cougarite', -- name
    38, -- no percentage_male
    5, -- special attack
    10, -- special defense
    5, -- speed
    'Normal', -- primary type
    NULL, -- no secondary type
    4, -- weight in kilograms
    1, -- gneration
    0 -- not legendary
);