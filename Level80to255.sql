-- Delete Record
DELETE FROM `world`.`creature_classlevelstats`
WHERE `level` > 80;


-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @basehp0 = 5342;
SET @basehp1 = 9215;
SET @basehp2 = 12600;
SET @basemana = 0;
SET @basearmor = 9729;
SET @attackpower = 642;
SET @rangedattackpower = 103;
SET @damage_base = 47.2377;
SET @damage_exp1 = 131.186;
SET @damage_exp2 = 164.924;

-- Duplicate the data for the new levels
INSERT IGNORE INTO `world`.`creature_classlevelstats` (
    `level`,
    `class`,
    `basehp0`,
    `basehp1`,
    `basehp2`,
    `basemana`,
    `basearmor`,
    `attackpower`,
    `rangedattackpower`,
    `damage_base`,
    `damage_exp1`,
    `damage_exp2`,
    `comment`
)
SELECT
    tl.`level`,
    1 AS `class`,
    (@basehp0 * POW(1.01, tl.`level` - @startLevel)) AS `basehp0`,
    (@basehp1 * POW(1.01, tl.`level` - @startLevel)) AS `basehp1`,
    (@basehp2 * POW(1.01, tl.`level` - @startLevel)) AS `basehp2`,
    (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`,
    (@basearmor * POW(1.01, tl.`level` - @startLevel)) AS `basearmor`,
    (@attackpower * POW(1.01, tl.`level` - @startLevel)) AS `attackpower`,
    (@rangedattackpower * POW(1.01, tl.`level` - @startLevel)) AS `rangedattackpower`,
    (@damage_base * POW(1.01, tl.`level` - @startLevel)) AS `damage_base`,
    (@damage_exp1 * POW(1.01, tl.`level` - @startLevel)) AS `damage_exp1`,
    (@damage_exp2 * POW(1.01, tl.`level` - @startLevel)) AS `damage_exp2`,
    NULL AS `comment`
FROM
    (SELECT @startLevel + n AS `level`
    FROM (
        SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
        FROM (
            SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
        ) AS units
        CROSS JOIN (
            SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
        ) AS tens
        CROSS JOIN (
            SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
        ) AS hundreds
        WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
    ) AS levels) AS tl;

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @basehp0 = 4274;
SET @basehp1 = 7373;
SET @basehp2 = 12600;
SET @basemana = 3994;
SET @basearmor = 9706;
SET @attackpower = 608;
SET @rangedattackpower = 80;
SET @damage_base = 44.2013;
SET @damage_exp1 = 112.345;
SET @damage_exp2 = 164.924;

-- Duplicate the data for the new levels
INSERT IGNORE INTO `world`.`creature_classlevelstats` (
    `level`,
    `class`,
    `basehp0`,
    `basehp1`,
    `basehp2`,
    `basemana`,
    `basearmor`,
    `attackpower`,
    `rangedattackpower`,
    `damage_base`,
    `damage_exp1`,
    `damage_exp2`,
    `comment`
)
SELECT
    tl.`level`,
    2 AS `class`,
    (@basehp0 * POW(1.01, tl.`level` - @startLevel)) AS `basehp0`,
    (@basehp1 * POW(1.01, tl.`level` - @startLevel)) AS `basehp1`,
    (@basehp2 * POW(1.01, tl.`level` - @startLevel)) AS `basehp2`,
    (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`,
    (@basearmor * POW(1.01, tl.`level` - @startLevel)) AS `basearmor`,
    (@attackpower * POW(1.01, tl.`level` - @startLevel)) AS `attackpower`,
    (@rangedattackpower * POW(1.01, tl.`level` - @startLevel)) AS `rangedattackpower`,
    (@damage_base * POW(1.01, tl.`level` - @startLevel)) AS `damage_base`,
    (@damage_exp1 * POW(1.01, tl.`level` - @startLevel)) AS `damage_exp1`,
    (@damage_exp2 * POW(1.01, tl.`level` - @startLevel)) AS `damage_exp2`,
    NULL AS `comment`
FROM
    (SELECT @startLevel + n AS `level`
    FROM (
        SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
        FROM (
            SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
        ) AS units
        CROSS JOIN (
            SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
        ) AS tens
        CROSS JOIN (
            SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
        ) AS hundreds
        WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
    ) AS levels) AS tl;

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @basehp0 = 5342;
SET @basehp1 = 9215;
SET @basehp2 = 12600;
SET @basemana = 0;
SET @basearmor = 9706;
SET @attackpower = 642;
SET @rangedattackpower = 103;
SET @damage_base = 47.2377;
SET @damage_exp1 = 131.186;
SET @damage_exp2 = 164.924;

-- Duplicate the data for the new levels
INSERT IGNORE INTO `world`.`creature_classlevelstats` (
    `level`,
    `class`,
    `basehp0`,
    `basehp1`,
    `basehp2`,
    `basemana`,
    `basearmor`,
    `attackpower`,
    `rangedattackpower`,
    `damage_base`,
    `damage_exp1`,
    `damage_exp2`,
    `comment`
)
SELECT
    tl.`level`,
    4 AS `class`,
    (@basehp0 * POW(1.01, tl.`level` - @startLevel)) AS `basehp0`,
    (@basehp1 * POW(1.01, tl.`level` - @startLevel)) AS `basehp1`,
    (@basehp2 * POW(1.01, tl.`level` - @startLevel)) AS `basehp2`,
    (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`,
    (@basearmor * POW(1.01, tl.`level` - @startLevel)) AS `basearmor`,
    (@attackpower * POW(1.01, tl.`level` - @startLevel)) AS `attackpower`,
    (@rangedattackpower * POW(1.01, tl.`level` - @startLevel)) AS `rangedattackpower`,
    (@damage_base * POW(1.01, tl.`level` - @startLevel)) AS `damage_base`,
    (@damage_exp1 * POW(1.01, tl.`level` - @startLevel)) AS `damage_exp1`,
    (@damage_exp2 * POW(1.01, tl.`level` - @startLevel)) AS `damage_exp2`,
    NULL AS `comment`
FROM
    (SELECT @startLevel + n AS `level`
    FROM (
        SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
        FROM (
            SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
        ) AS units
        CROSS JOIN (
            SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
        ) AS tens
        CROSS JOIN (
            SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
        ) AS hundreds
        WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
    ) AS levels) AS tl;

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @basehp0 = 3739;
SET @basehp1 = 6478;
SET @basehp2 = 10080;
SET @basemana = 8814;
SET @basearmor = 7822;
SET @attackpower = 287;
SET @rangedattackpower = 69;
SET @damage_base = 40.099;
SET @damage_exp1 = 129.377;
SET @damage_exp2 = 152.555;

-- Duplicate the data for the new levels
INSERT IGNORE INTO `world`.`creature_classlevelstats` (
    `level`,
    `class`,
    `basehp0`,
    `basehp1`,
    `basehp2`,
    `basemana`,
    `basearmor`,
    `attackpower`,
    `rangedattackpower`,
    `damage_base`,
    `damage_exp1`,
    `damage_exp2`,
    `comment`
)
SELECT
    tl.`level`,
    8 AS `class`,
    (@basehp0 * POW(1.01, tl.`level` - @startLevel)) AS `basehp0`,
    (@basehp1 * POW(1.01, tl.`level` - @startLevel)) AS `basehp1`,
    (@basehp2 * POW(1.01, tl.`level` - @startLevel)) AS `basehp2`,
    (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`,
    (@basearmor * POW(1.01, tl.`level` - @startLevel)) AS `basearmor`,
    (@attackpower * POW(1.01, tl.`level` - @startLevel)) AS `attackpower`,
    (@rangedattackpower * POW(1.01, tl.`level` - @startLevel)) AS `rangedattackpower`,
    (@damage_base * POW(1.01, tl.`level` - @startLevel)) AS `damage_base`,
    (@damage_exp1 * POW(1.01, tl.`level` - @startLevel)) AS `damage_exp1`,
    (@damage_exp2 * POW(1.01, tl.`level` - @startLevel)) AS `damage_exp2`,
    NULL AS `comment`
FROM
    (SELECT @startLevel + n AS `level`
    FROM (
        SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
        FROM (
            SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
        ) AS units
        CROSS JOIN (
            SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
        ) AS tens
        CROSS JOIN (
            SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
        ) AS hundreds
        WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
    ) AS levels) AS tl;


-- Delete Record
DELETE FROM `world`.`pet_levelstats`
WHERE `level` > 80;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 1;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 25566;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 26101;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 575;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 15352;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 417;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 8477;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 8996;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 510;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 5766;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 15438;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 15214;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 5058;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 14385;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 17252;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 26125;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 3939;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 329;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 19668;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 22362;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 3450;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 10928;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 6250;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 24476;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 24656;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 1863;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 416;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 12922;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 24815;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 25553;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 1860;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @creature_entry = 10979;

-- Fetch the base values for the starting level
SET @hp = (SELECT `hp` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @mana = (SELECT `mana` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @armor = (SELECT `armor` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @str = (SELECT `str` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @agi = (SELECT `agi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @sta = (SELECT `sta` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @inte = (SELECT `inte` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @spi = (SELECT `spi` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @min_dmg = (SELECT `min_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);
SET @max_dmg = (SELECT `max_dmg` FROM `world`.`pet_levelstats` WHERE `creature_entry` = @creature_entry AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`, `min_dmg`, `max_dmg`)
SELECT @creature_entry AS `creature_entry`,
       tl.`level` AS `level`,
       (@hp * POW(1.01, tl.`level` - @startLevel)) AS `hp`,
       (@mana * POW(1.01, tl.`level` - @startLevel)) AS `mana`,
       (@armor * POW(1.01, tl.`level` - @startLevel)) AS `armor`,
       (@str * POW(1.01, tl.`level` - @startLevel)) AS `str`,
       (@agi * POW(1.01, tl.`level` - @startLevel)) AS `agi`,
       (@sta * POW(1.01, tl.`level` - @startLevel)) AS `sta`,
       (@inte * POW(1.01, tl.`level` - @startLevel)) AS `inte`,
       (@spi * POW(1.01, tl.`level` - @startLevel)) AS `spi`,
       (@min_dmg * POW(1.01, tl.`level` - @startLevel)) AS `min_dmg`,
       (@max_dmg * POW(1.01, tl.`level` - @startLevel)) AS `max_dmg`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Delete Record
DELETE FROM `world`.`player_classlevelstats`
WHERE `level` > 80;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @class = 1;
SET @basehp = (SELECT `basehp` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);
SET @basemana = (SELECT `basemana` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_classlevelstats` (`class`, `level`, `basehp`, `basemana`)
SELECT @class AS `class`,
       tl.`level` AS `level`,
       (@basehp * POW(1.01, tl.`level` - @startLevel)) AS `basehp`,
       (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @class = 2;
SET @basehp = (SELECT `basehp` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);
SET @basemana = (SELECT `basemana` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_classlevelstats` (`class`, `level`, `basehp`, `basemana`)
SELECT @class AS `class`,
       tl.`level` AS `level`,
       (@basehp * POW(1.01, tl.`level` - @startLevel)) AS `basehp`,
       (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @class = 3;
SET @basehp = (SELECT `basehp` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);
SET @basemana = (SELECT `basemana` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_classlevelstats` (`class`, `level`, `basehp`, `basemana`)
SELECT @class AS `class`,
       tl.`level` AS `level`,
       (@basehp * POW(1.01, tl.`level` - @startLevel)) AS `basehp`,
       (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @class = 4;
SET @basehp = (SELECT `basehp` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);
SET @basemana = (SELECT `basemana` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_classlevelstats` (`class`, `level`, `basehp`, `basemana`)
SELECT @class AS `class`,
       tl.`level` AS `level`,
       (@basehp * POW(1.01, tl.`level` - @startLevel)) AS `basehp`,
       (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @class = 5;
SET @basehp = (SELECT `basehp` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);
SET @basemana = (SELECT `basemana` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_classlevelstats` (`class`, `level`, `basehp`, `basemana`)
SELECT @class AS `class`,
       tl.`level` AS `level`,
       (@basehp * POW(1.01, tl.`level` - @startLevel)) AS `basehp`,
       (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @class = 6;
SET @basehp = (SELECT `basehp` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);
SET @basemana = (SELECT `basemana` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_classlevelstats` (`class`, `level`, `basehp`, `basemana`)
SELECT @class AS `class`,
       tl.`level` AS `level`,
       (@basehp * POW(1.01, tl.`level` - @startLevel)) AS `basehp`,
       (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @class = 7;
SET @basehp = (SELECT `basehp` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);
SET @basemana = (SELECT `basemana` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_classlevelstats` (`class`, `level`, `basehp`, `basemana`)
SELECT @class AS `class`,
       tl.`level` AS `level`,
       (@basehp * POW(1.01, tl.`level` - @startLevel)) AS `basehp`,
       (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @class = 8;
SET @basehp = (SELECT `basehp` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);
SET @basemana = (SELECT `basemana` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_classlevelstats` (`class`, `level`, `basehp`, `basemana`)
SELECT @class AS `class`,
       tl.`level` AS `level`,
       (@basehp * POW(1.01, tl.`level` - @startLevel)) AS `basehp`,
       (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @class = 9;
SET @basehp = (SELECT `basehp` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);
SET @basemana = (SELECT `basemana` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_classlevelstats` (`class`, `level`, `basehp`, `basemana`)
SELECT @class AS `class`,
       tl.`level` AS `level`,
       (@basehp * POW(1.01, tl.`level` - @startLevel)) AS `basehp`,
       (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @class = 11;
SET @basehp = (SELECT `basehp` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);
SET @basemana = (SELECT `basemana` FROM `world`.`player_classlevelstats` WHERE `class` = @class AND `level` = @startLevel);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_classlevelstats` (`class`, `level`, `basehp`, `basemana`)
SELECT @class AS `class`,
       tl.`level` AS `level`,
       (@basehp * POW(1.01, tl.`level` - @startLevel)) AS `basehp`,
       (@basemana * POW(1.01, tl.`level` - @startLevel)) AS `basemana`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Delete Record
DELETE FROM `world`.`player_levelstats`
WHERE `level` > 80;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 2;
SET @class = 9;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 6;
SET @class = 3;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 7;
SET @class = 6;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 6;
SET @class = 6;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 11;
SET @class = 5;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 1;
SET @class = 1;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 3;
SET @class = 1;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 7;
SET @class = 8;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 5;
SET @class = 4;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 10;
SET @class = 4;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 11;
SET @class = 1;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 1;
SET @class = 2;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 4;
SET @class = 4;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 3;
SET @class = 2;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 8;
SET @class = 8;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 7;
SET @class = 9;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 8;
SET @class = 7;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 7;
SET @class = 4;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 8;
SET @class = 3;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 10;
SET @class = 5;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 1;
SET @class = 4;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 4;
SET @class = 6;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 5;
SET @class = 5;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 8;
SET @class = 4;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 1;
SET @class = 5;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 3;
SET @class = 3;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 3;
SET @class = 5;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 3;
SET @class = 6;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 4;
SET @class = 5;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 6;
SET @class = 7;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 1;
SET @class = 6;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 11;
SET @class = 3;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 10;
SET @class = 3;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 1;
SET @class = 8;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 10;
SET @class = 6;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 1;
SET @class = 9;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 11;
SET @class = 6;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 3;
SET @class = 4;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 2;
SET @class = 1;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 4;
SET @class = 3;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 11;
SET @class = 2;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 5;
SET @class = 6;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 6;
SET @class = 11;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 8;
SET @class = 1;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 10;
SET @class = 8;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 2;
SET @class = 3;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 5;
SET @class = 1;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 5;
SET @class = 8;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 2;
SET @class = 4;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 10;
SET @class = 9;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 5;
SET @class = 9;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 8;
SET @class = 5;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 11;
SET @class = 7;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 6;
SET @class = 1;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 2;
SET @class = 6;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 11;
SET @class = 8;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 7;
SET @class = 1;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 2;
SET @class = 7;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 8;
SET @class = 6;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 10;
SET @class = 2;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 4;
SET @class = 1;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set the starting level and maximum level
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values for the starting level
SET @race = 4;
SET @class = 11;
SET @str = (SELECT `str` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @agi = (SELECT `agi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @sta = (SELECT `sta` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @inte = (SELECT `inte` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);
SET @spi = (SELECT `spi` FROM `world`.`player_levelstats` WHERE `level` = @startLevel AND `race` = @race AND `class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `world`.`player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT @race AS `race`,
       @class AS `class`,
       tl.`level` AS `level`,
       ROUND((@str * POW(1.01, tl.`level` - @startLevel)), 2) AS `str`,
       ROUND((@agi * POW(1.01, tl.`level` - @startLevel)), 2) AS `agi`,
       ROUND((@sta * POW(1.01, tl.`level` - @startLevel)), 2) AS `sta`,
       ROUND((@inte * POW(1.01, tl.`level` - @startLevel)), 2) AS `inte`,
       ROUND((@spi * POW(1.01, tl.`level` - @startLevel)), 2) AS `spi`
FROM
  (SELECT @startLevel + n AS `level`
   FROM
     (SELECT units.a + 10 * tens.a + 100 * hundreds.a AS n
      FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
      CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
      WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) > @startLevel AND (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
     ) AS levels) AS tl;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Create a stored procedure
DROP PROCEDURE IF EXISTS IncrementPlayerXP; -- Remove the DELIMITER If Exists Before Running.
DELIMITER //

CREATE PROCEDURE IncrementPlayerXP()
BEGIN
    SET @startLevel := 80;
    SET @endLevel := 255;
    SET @currentLevel := @startLevel;
    SET @previousXP := (SELECT Experience FROM player_xp_for_level WHERE Level = @currentLevel - 1);
    
    WHILE @currentLevel <= @endLevel DO
        SET @currentXP := @previousXP * 1.01;
        
        -- Insert the new level and experience into the table
        INSERT IGNORE INTO player_xp_for_level (Level, Experience)
        VALUES (@currentLevel, @currentXP);
        
        SET @currentLevel := @currentLevel + 1;
        SET @previousXP := @currentXP;
    END WHILE;
    
    -- Display a success message
    SELECT CONCAT('Levels ', @startLevel, ' to ', @endLevel, ' have been incremented successfully.') AS Message;
END //

DELIMITER ;

-- Call the stored procedure to perform the increments
CALL IncrementPlayerXP();
DROP PROCEDURE IF EXISTS IncrementPlayerXP; -- Remove the DELIMITER after Running.