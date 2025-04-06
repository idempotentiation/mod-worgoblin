DELETE FROM `creature_template` WHERE `entry` IN (35869, 35872);
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (35869, 35872);
DELETE FROM `npc_trainer` WHERE `ID` IN (35869, 35872);

-- Worgen Trainers
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
-- Warlock
(35869, 0, 0, 0, 0, 0, 'Vitus Darkwalker', 'Warlock Trainer', NULL, 1503, 5, 5, 0, 12, 51, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 1500, 2000, 1, 1, 1, 768, 2048, 0, 0, 0, 0, 9, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0),
-- Mage
(35872, 0, 0, 0, 0, 0, 'Myriam Spellwaker', 'Mage Trainer', NULL, 4660, 5, 5, 0, 12, 51, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 1500, 2000, 1, 1, 1, 768, 2048, 0, 0, 0, 0, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(35869, 0, 5001, 1, 1, 0),
(35872, 0, 3345, 1, 1, 0);

INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(35869, -200009, 0, 0, 0, 0, 0),
(35872, -200007, 0, 0, 0, 0, 0);
