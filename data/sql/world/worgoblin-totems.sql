-- Add totem models for races that don't currently have shaman class
INSERT IGNORE  INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`) VALUES
-- worgen (Race ID 12) - Use nature-themed totems
(1, 12, 30762), -- Fire (borrowing from Troll style for nature theme)
(2, 12, 30761), -- Earth (borrowing from Troll style for nature theme)
(3, 12, 30763), -- Water (borrowing from Troll style for nature theme)
(4, 12, 30760), -- Air (borrowing from Troll style for nature theme)

-- goblin (Race ID 9) - Use mechanical/technological totems
(1, 9, 30754), -- Fire (borrowing from Dwarf style - similar culture)
(2, 9, 30753), -- Earth (borrowing from Dwarf style - similar culture)
(3, 9, 30755), -- Water (borrowing from Dwarf style - similar culture)
(4, 9, 30736); -- Air (borrowing from Dwarf style - similar culture)