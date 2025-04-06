SET
@QUESTID := 35000;

DELETE FROM `quest_template` WHERE `ID` BETWEEN @QUESTID+0 AND @QUESTID+10;
DELETE FROM `quest_template_addon` WHERE `ID` BETWEEN @QUESTID+0 AND @QUESTID+10;
DELETE FROM `quest_request_items` WHERE `ID` BETWEEN @QUESTID+0 AND @QUESTID+10;
DELETE FROM `quest_greeting` WHERE `ID` BETWEEN @QUESTID+0 AND @QUESTID+10;
DELETE FROM `quest_offer_reward` WHERE `ID` BETWEEN @QUESTID+0 AND @QUESTID+10;
DELETE FROM `quest_poi` WHERE `QuestID` BETWEEN @QUESTID+0 AND @QUESTID+10;
DELETE FROM `quest_poi_points` WHERE `QuestID` BETWEEN @QUESTID+0 AND @QUESTID+10;
DELETE FROM `creature_questender` WHERE `quest` BETWEEN @QUESTID+0 AND @QUESTID+10;
DELETE FROM `creature_queststarter` WHERE `quest` BETWEEN @QUESTID+0 AND @QUESTID+10;

-- Worgen
-- Druid
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(@QUESTID+0, 2, -1, 16, -263, 0, 0, 0, 0, 0, 0, @QUESTID+1, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 'A Lesson to Learn', 'Speak with Dendrite Starblaze in the village of Nighthaven, Moonglade.', '$N, I have been following your progress with much delight.  You are most assuredly developing yourself into a valued protector of nature.$B$BThe time has come for you to learn more about one of the various animal aspects that Cenarius has blessed us with the ability to change into - one that affords you command and mastery of the water.  For this, you must travel to the village of Nighthaven in Moonglade and speak with Dendrite Starblaze of the Cenarion Circle there.  He will guide you further.', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(@QUESTID+1, 2, -1, 16, -263, 0, 0, 0, 0, 0, 0, @QUESTID+2, 4, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15877, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 609, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 12, 'Trial of the Lake', 'Find a Shrine Bauble in Lake Elune\'ara, and take it to the Shrine of Remulos in northwestern Moonglade.  Once there, use the Shrine Bauble.$B$BYou must speak with Tajarri at the shrine afterwards in order to complete the trial.', 'For your first trial, search the depths of Lake Elune\'ara to locate a Shrine Bauble.  It decays rapidly, so proceed with it to the Shrine of Remulos post haste.  Use the bauble at the shrine, and then speak with Tajarri there; she is one of Moonglade\'s most trusted wardens.$B$BYou only have a set amount of time to complete the task, and you may be competing against other druids searching for baubles themselves.  Mental and physical dexterity will be critical to your success.$B$BGood luck, $N.', 'Complete the Trial of the Lake.', 'Return to Tajarri at the Shrine of Remulos in Moonglade.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(@QUESTID+2, 2, -1, 16, -263, 0, 0, 0, 0, 0, 0, @QUESTID+3, 4, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15883, 1, 15882, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 609, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 'Trial of the Sea Lion', 'Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance.  Speak with the residents of Moonglade to learn clues as to where these items may be located.$B$BForm the Pendant of the Sea Lion from the two pendant halves.  You need to be in proximity of the Shrine of Remulos to do this.$B$BBring the joined pendant to Dendrite Starblaze in the village of Nighthaven, Moonglade.', 'For the second trial, you\'ll need the two halves that make the Pendant of the Sea Lion.  One half draws power from the agility of the sea lion aspect, gliding through water; the other draws power from the incredible endurance of the sea lion aspect.  Druids draw on both these traits equally to embody the aspect of their aquatic form.$B$BSpeak with the locals of Moonglade to learn where the parts may lie, and bring both here to join them together.  Once formed, take the pendant to Dendrite Starblaze.', '', 'Return to Dendrite Starblaze at Nighthaven in Moonglade.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15885, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '', '', '', 0),
(@QUESTID+3, 2, -1, 16, -263, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1446, 0, 0, 15885, 0, 0, 16608, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 609, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 'Aquatic Form', 'Return to Darnassus and show Mathrengyl Bearwalker the Pendant of the Sea Lion.', 'You have completed the necessary lessons all young druids are taught before they can adopt an aquatic aspect.  Go now back to your trainer, Mathrengyl Bearwalker, in Darnassus.  Show him your pendant and prove to him you are ready to learn what he has to teach you.  He will complete your training, allowing you to become one with the water.$B$BGoodbye, young druid.  We shall speak again.', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15885, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(@QUESTID+4, 2, -1, 10, -263, 0, 0, 0, 0, 0, 0, @QUESTID+8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 609, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 'Moonglade', 'Use the spell "Teleport: Moonglade" to travel to Moonglade.  When you arrive, speak with Dendrite Starblaze in the village of Nighthaven.', 'All druids are welcome in the sacred lands of Moonglade, regardless of the current tensions in the Cenarion Circle between Arch Druid Staghelm and Keeper Remulos - Moonglade\'s guardian.  Now that you\'re learning the ways of the Claw, I\'ll teach you the spell that lets you transport yourself there.  Cast it whenever you seek Moonglade\'s knowledge or solace.$B$BAs for your first lesson, travel to Moonglade and speak with Dendrite Starblaze in Nighthaven about the path you\'re now on.  Good luck, young druid.', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(@QUESTID+5, 2, -1, 10, -263, 0, 0, 0, 0, 0, 0, @QUESTID+4, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 609, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 'Heeding the Call', 'Speak with Mathrengyl Bearwalker in the Cenarion Enclave, Darnassus.', 'Excuse me, friend...$B$BIt has come to my attention that Mathrengyl Bearwalker has put out word that he wishes to speak with you.  It seems that your training as a druid is about to take on a new life, and he will be training you personally.  Mathrengyl is the direct assistant to the Arch Druid himself, and is one of the most sage and august druids you\'ll find in Teldrassil.$B$BHe is located in the Cenarion Enclave of Darnassus, on the second floor of Fandral Staghelm\'s tree.', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(@QUESTID+6, 2, -1, 10, -263, 0, 0, 0, 0, 0, 0, @QUESTID+4, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 609, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 'Heeding the Call', 'Speak with Mathrengyl Bearwalker in the Cenarion Enclave, Darnassus.', 'Excuse me, friend...$B$BIt has come to my attention that Mathrengyl Bearwalker has put out word that he wishes to speak with you.  It seems that your training as a druid is about to take on a new life, and he will be training you personally.  Mathrengyl is the direct assistant to the Arch Druid himself, and is one of the most sage and august druids you\'ll find in Teldrassil.$B$BHe is located in the Cenarion Enclave of Darnassus, on the second floor of Fandral Staghelm\'s tree.', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(@QUESTID+7, 2, -1, 10, -263, 0, 0, 0, 0, 0, 0, @QUESTID+4, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 609, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 'Heeding the Call', 'Speak with Mathrengyl Bearwalker in the Cenarion Enclave, Darnassus.', 'Excuse me, friend...$B$BIt has come to my attention that Mathrengyl Bearwalker has put out word that he wishes to speak with you.  It seems that your training as a druid is about to take on a new life, and he will be training you personally.  Mathrengyl is the direct assistant to the Arch Druid himself, and is one of the most sage and august druids you\'ll find in Teldrassil.$B$BHe is located in the Cenarion Enclave of Darnassus, on the second floor of Fandral Staghelm\'s tree.', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(@QUESTID+8, 2, -1, 10, -263, 0, 0, 0, 0, 0, 0, @QUESTID+9, 3, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 609, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 'Great Bear Spirit', 'Seek out the Great Bear Spirit in northwestern Moonglade and learn what it has to share with you about the nature of the bear.  When finished, return to Dendrite Starblaze in Nighthaven, Moonglade.', 'In the northwest part of Moonglade resides the home of a wise and noble being we call the Great Bear Spirit.  For all druids, it has served as a tutor and mentor into the first true natural understanding of the bear.  All druids at one point seek the spirit\'s wisdom, and you shall be no exception.$B$BGo to the Great Bear Spirit now and learn what it will teach.  When it is satisfied with you, return to me here in Nighthaven.  We will then see if you have truly taken account of the lessons it teaches.', 'Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.', 'Return to Dendrite Starblaze at Nighthaven in Moonglade.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(@QUESTID+9, 2, -1, 10, -263, 0, 0, 0, 0, 0, 0, @QUESTID+10, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 'Back to Darnassus', 'Return to Darnassus and speak with Mathrengyl Bearwalker in the Cenarion Enclave.', 'The time has come for us to part ways, young one, as the application of your lessons takes you back to whom that sent you to me.  Mathrengyl Bearwalker walks truly in balance with nature, even as he dwells precariously close to where the balance has faltered.  Listen to his instructions, and you will soon complete your first lessons into your role as a protector of balance.$B$BGo now, young one.  We shall meet again.', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(@QUESTID+10, 2, -1, 10, -263, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 19179, 0, 0, 15208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 609, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 'Body and Heart', 'Use the Cenarion Moondust on the Moonkin Stone of Auberdine to bring forth Lunaclaw.  From there, you must face Lunaclaw and earn the strength of body and heart it possesses.$B$BSpeak with Mathrengyl Bearwalker in Darnassus when you are done.', 'Directly east of Auberdine lay many moonkin caves.  The one closest to Auberdine has a Moonkin Stone inside it.  Lunaclaw, the defender of the stone, will face you only when Cenarion Moondust is applied to it.  Lunaclaw possesses within it a strength that you must use as one of the Claw.$B$BYou\'ve earned the right to use this Cenarion Moondust, $N... now show me that you\'ve earned the right to possess the strength of body and the strength of heart needed as a druid!', 'Face Lunaclaw and earn the strength of body and heart it possesses.', 'Return to Mathrengyl Bearwalker at Cenarion Enclave in Darnassus.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0);

INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(@QUESTID+0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@QUESTID+1, 0, 1024, 0, @QUESTID+0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34),
(@QUESTID+2, 0, 1024, 0, @QUESTID+1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@QUESTID+3, 0, 1024, 0, @QUESTID+2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(@QUESTID+4, 0, 1024, 19027, 0, @QUESTID+8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@QUESTID+5, 0, 1024, 0, 0, 0, @QUESTID+5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@QUESTID+6, 0, 1024, 0, 0, 0, @QUESTID+5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@QUESTID+7, 0, 1024, 0, 0, 0, @QUESTID+5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@QUESTID+8, 0, 1024, 0, @QUESTID+4, @QUESTID+9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(@QUESTID+9, 0, 1024, 0, @QUESTID+8, @QUESTID+10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@QUESTID+10, 0, 1024, 0, @QUESTID+9, 0, 0, 112, 21600, 0, 0, 0, 0, 0, 0, 1, 2);

INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(@QUESTID+0, 1, 0, '', 0),
(@QUESTID+2, 1, 0, 'Have you formed your pendant for me to inspect, $N? If you need help in locating the parts, try asking the local populace for information. Not only will you find what you seek, but it will give you a reason to explore this wondrous and sacred glade.', 0),
(@QUESTID+3, 1, 0, 'Your return to Darnassus is not without heralding, though I will need proof of your lessons learned in Moonglade before I will teach you your aquatic form.$B$BDo you have the Pendant of the Sea Lion?', 0),
(@QUESTID+4, 1, 0, '', 0),
(@QUESTID+5, 1, 0, '', 0),
(@QUESTID+6, 1, 0, '', 0),
(@QUESTID+7, 1, 0, '', 0),
(@QUESTID+8, 1, 0, '', 0),
(@QUESTID+9, 1, 0, '', 0),
(@QUESTID+10, 1, 0, '', 0);

INSERT INTO `quest_greeting` (`ID`, `type`, `GreetEmoteType`, `GreetEmoteDelay`, `Greeting`, `VerifiedBuild`) VALUES
(@QUESTID+2, 0, 0, 0, 'Hello, hello!  Welcome to my kitchen, $g sir : m\'lady;!  This is where all of the Scarlet Raven Tavern\'s finest delicacies are made.  Ah, just smell the wonderful aroma!', 0);

INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(@QUESTID+0, 0, 0, 0, 0, 0, 0, 0, 0, 'Salutations, young $c; the time has come for you to know our aquatic form. It is one that lets you move freely and indefinitely through water. You will find this aspect a useful tool and a blessing... but it is one that must be earned before it is mastered.$B$BYou will face two trials to overcome. The first will test your ability to work in water under pressure. The second will test your resolve to understand the aspects of the form itself.$B$BStand ready, as the time of testing is now upon us.', 0),
(@QUESTID+1, 0, 0, 0, 0, 0, 0, 0, 0, 'Well now. it looks like yet another druid has successfully completed the Trial of the Lake! Well done. my young friend - well done.$B$BAs I\'ve said, my name is Tajarri. It is my duty and my privilege to serve as a warden for Moonglade, and specifically this shrine. Keeper Remulos guides the Cenarion Circle in preservation of nature and balance, and his shrine serves as a lasting tribute to such. By using the bauble here, it serves as a nod to the importance of this place within the Circle.', 0),
(@QUESTID+2, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve completed the Trial of the Sea Lion, $N - congratulations.$B$BEach task in acquiring the pendant shows that both agility and endurance are necessary to act in harmony with what you desire to do underwater. Neither can exist without the other, and both cannot be done without you willingness to embrace the aspect of the sea lion.$B$BRemember these lessons well, and count on them once you have gained your aquatic form.', 0),
(@QUESTID+3, 0, 0, 0, 0, 0, 0, 0, 0, 'Very impressive, $N. You are ready to learn your aquatic form, and it is my pleasure to teach it to you.$B$BAlso, in recognition of your achievement during the two trials, I give you this item. I hope you\'ll find it to be a welcome addition to your gear as a protector of nature and a keeper of the balance.', 0),
(@QUESTID+4, 0, 0, 0, 0, 0, 0, 0, 0, '"And so it begins. Father Cenarius. And so it begins."$B$BDendrite makes a quick, invisible gesture in the air above him. A slight aura of power falls over him.$B$B"The first perspective of nature you must adapt to is that of the bear. I will put you on the path to understanding this aspect of druidic life, but it is you that must embrace it and propagate it - now and forever!"', 0),
(@QUESTID+5, 0, 0, 0, 0, 0, 0, 0, 0, 'I am glad you found your way here today. young $c. The time has come for you to take a large step into a much larger world.$B$BInside each of Cenarius\' children is the call to serve nature. Animals and plants are our friends as well as our charges. We choose to devote our lives as preservers of balance for their sakes as well as our own. Your first step into this world will be to learn of the ways of the bear, and to learn strength of body and heart.$B$BReady yourself!', 0),
(@QUESTID+6, 0, 0, 0, 0, 0, 0, 0, 0, 'I am glad you found your way here today. young $c. The time has come for you to take a large step into a much larger world.$B$BInside each of Cenarius\' children is the call to serve nature. Animals and plants are our friends as well as our charges. We choose to devote our lives as preservers of balance for their sakes as well as our own. Your first step into this world will be to learn of the ways of the bear, and to learn strength of body and heart.$B$BReady yourself!', 0),
(@QUESTID+7, 0, 0, 0, 0, 0, 0, 0, 0, 'I am glad you found your way here today. young $c. The time has come for you to take a large step into a much larger world.$B$BInside each of Cenarius\' children is the call to serve nature. Animals and plants are our friends as well as our charges. We choose to devote our lives as preservers of balance for their sakes as well as our own. Your first step into this world will be to learn of the ways of the bear, and to learn strength of body and heart.$B$BReady yourself!', 0),
(@QUESTID+8, 0, 0, 0, 0, 0, 0, 0, 0, 'Dendrite makes another invisible gesture in the air above him as you approach. Another aura of power comes over him. and he smiles ever so slightly.$B$B"I sense wisdom in you, young one, that was not present when we first met. You gaze upon me with strength and knowing intent, though this intent is yet not focused. You will now learn to focus your strength and adopt the nature of the bear into your work."', 0),
(@QUESTID+9, 0, 0, 0, 0, 0, 0, 0, 0, 'Welcome back, $N. I sense that your first meeting with the Great Bear Spirit is the same as it is with all druids when they first start down the path of the Claw... a little bewildering, but very intense. I know it was that way with me.$B$BThe Great Bear Spirit has been a part of Azeroth as long as Azeroth has existed in the heavens. We have come to rely on its wisdom and its power to fuel our purpose. Now, the time has now come for your first test of this purpose. Listen closely...', 0),
(@QUESTID+10, 0, 0, 0, 0, 0, 0, 0, 0, 'You have finally taken your large step into a much larger world, $N. I sense the teaching of the Great Bear Spirit within you, and I sense that you have received the strength that Lunaclaw possessed.$B$BThere are no further obstacles in your way... let me now teach you what it means to be a $c of the Claw!', 0);

INSERT INTO `quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES
(@QUESTID+0, 0, -1, 1, 241, 0, 0, 1, 0),
(@QUESTID+1, 0, 10, 1, 241, 0, 0, 3, 0),
(@QUESTID+1, 1, -1, 1, 241, 0, 0, 1, 0),
(@QUESTID+1, 2, 16, 1, 241, 0, 1, 3, 0),
(@QUESTID+2, 0, -1, 1, 241, 0, 0, 1, 0),
(@QUESTID+2, 1, 10, 1, 42, 0, 0, 1, 0),
(@QUESTID+2, 2, 11, 0, 40, 0, 0, 1, 0),
(@QUESTID+3, 0, -1, 1, 41, 0, 0, 1, 0),
(@QUESTID+4, 0, -1, 1, 241, 0, 0, 1, 0),
(@QUESTID+5, 0, -1, 1, 41, 0, 0, 1, 0),
(@QUESTID+6, 0, -1, 1, 41, 0, 0, 1, 0),
(@QUESTID+7, 0, -1, 1, 41, 0, 0, 1, 0),
(@QUESTID+8, 0, -1, 1, 241, 0, 0, 1, 0),
(@QUESTID+8, 1, 16, 1, 241, 0, 0, 1, 0),
(@QUESTID+9, 0, -1, 1, 41, 0, 0, 1, 0),
(@QUESTID+10, 0, -1, 1, 41, 0, 0, 1, 0),
(@QUESTID+10, 1, 16, 1, 42, 0, 0, 1, 0);

INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(@QUESTID+0, 0, 0, 8020, -2679, 0),
(@QUESTID+1, 0, 0, 7708, -2733, 0),
(@QUESTID+1, 0, 1, 7775, -2642, 0),
(@QUESTID+1, 0, 2, 7749, -2501, 0),
(@QUESTID+1, 0, 3, 7713, -2534, 0),
(@QUESTID+1, 0, 4, 7667, -2584, 0),
(@QUESTID+1, 0, 5, 7634, -2635, 0),
(@QUESTID+1, 0, 6, 7667, -2680, 0),
(@QUESTID+1, 1, 0, 7874, -2224, 0),
(@QUESTID+1, 2, 0, 7865, -2220, 0),
(@QUESTID+2, 0, 0, 8020, -2679, 0),
(@QUESTID+2, 1, 0, 7839, -259, 0),
(@QUESTID+2, 2, 0, -10172, 2391, 0),
(@QUESTID+3, 0, 0, 10179, 2564, 0),
(@QUESTID+4, 0, 0, 8020, -2679, 0),
(@QUESTID+5, 0, 0, 10179, 2564, 0),
(@QUESTID+6, 0, 0, 10179, 2564, 0),
(@QUESTID+7, 0, 0, 10179, 2564, 0),
(@QUESTID+8, 0, 0, 8020, -2679, 0),
(@QUESTID+8, 1, 0, 8068, -2284, 0),
(@QUESTID+9, 0, 0, 10179, 2564, 0),
(@QUESTID+10, 0, 0, 10179, 2564, 0),
(@QUESTID+10, 1, 0, 6366, 140, 0);

INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(11802, @QUESTID+0),
(11799, @QUESTID+1),
(11802, @QUESTID+2),
(4217, @QUESTID+3),
(11802, @QUESTID+4),
(4217, @QUESTID+5),
(4217, @QUESTID+6),
(4217, @QUESTID+7),
(11802, @QUESTID+8),
(4217, @QUESTID+9),
(4217, @QUESTID+10);

INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(4217, @QUESTID+0),
(11802, @QUESTID+1),
(11799, @QUESTID+2),
(11802, @QUESTID+3),
(4217, @QUESTID+4),
(3602, @QUESTID+5),
(5505, @QUESTID+6),
(16721, @QUESTID+7),
(11802, @QUESTID+8),
(11802, @QUESTID+9),
(4217, @QUESTID+10);
