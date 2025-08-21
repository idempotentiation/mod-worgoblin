/*Grants all newly created worgen and goblin rogues the ability to use axes and maces, respectively*/
/*Worgen and goblin rogues start with an axe and a mace, respectively, but rogues don't start with those weapon skills learned by default*/
DELETE FROM `playercreateinfo_skills` WHERE `raceMask` IN (256, 2048) AND `classMask` IN (0, 8);
INSERT INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES
(2048, 8, 44, 0, 'Axes - Worgen'), -- Yes, these are hackfixes and I'm very mad about it,
(256, 8, 54, 0, 'Maces - Goblin'), -- But right now I don't see any other way to add these.
(2048, 0, 789, 0, 'Worgen - Racial'), -- And unfortunately, I really want worgen and goblins
(256, 0, 790, 0, 'Goblin - Racial'); -- To have their starting gear from cata, and the rogues have funky weapons.

/*Updates existing starting skills to include worgen and goblins where relevant*/
/*Only update skill if it has the default racemask (to prevent conflict with other modules that change starting weapon skills)*/
UPDATE `playercreateinfo_skills` SET `racemask` = `racemask`|256|2048 WHERE `skill` = 45 AND `racemask` = 650; -- Bows
UPDATE `playercreateinfo_skills` SET `racemask` = `racemask`|256|2048 WHERE `skill` = 46 AND `racemask` = 36; -- Guns
UPDATE `playercreateinfo_skills` SET `racemask` = `racemask`|256|2048 WHERE `skill` = 173 AND `racemask` = 735; -- Daggers
UPDATE `playercreateinfo_skills` SET `racemask` = `racemask`|256 WHERE `skill` = 160 AND `racemask` = 1061; -- 2h-mace goblins
/*Add appropriate faction language to worgen and goblins*/
UPDATE `playercreateinfo_skills` SET `racemask` = `racemask`|256 WHERE `skill` = 109; -- Orcish language goblins
UPDATE `playercreateinfo_skills` SET `racemask` = `racemask`|2048 WHERE `skill` = 98; -- Common language worgen
