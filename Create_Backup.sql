-- player_levelstats
CREATE TABLE z_player_levelstats_backup LIKE player_levelstats;
INSERT INTO z_player_levelstats_backup SELECT * FROM player_levelstats;

-- creature_classlevelstats
CREATE TABLE z_creature_classlevelstats_backup LIKE creature_classlevelstats;
INSERT INTO z_creature_classlevelstats_backup SELECT * FROM creature_classlevelstats;

-- pet_levelstats
CREATE TABLE z_pet_levelstats_backup LIKE pet_levelstats;
INSERT INTO z_pet_levelstats_backup SELECT * FROM pet_levelstats;

-- player_classlevelstats
CREATE TABLE z_player_classlevelstats_backup LIKE player_classlevelstats;
INSERT INTO z_player_classlevelstats_backup SELECT * FROM player_classlevelstats;

-- player_xp_for_level
CREATE TABLE z_player_xp_for_level_backup LIKE player_xp_for_level;
INSERT INTO z_player_xp_for_level_backup SELECT * FROM player_xp_for_level;
