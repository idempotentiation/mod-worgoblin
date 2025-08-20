# This module is (mostly) no longer being maintained.

# Worgoblin Module

[![core-build](https://github.com/benjymansy123/mod-worgoblin/actions/workflows/core-build.yml/badge.svg)](https://github.com/benjymansy123/mod-worgoblin/actions/workflows/core-build.yml)

This is a module for [AzerothCore](http://www.azerothcore.org) that adds worgen, goblins, and numerous features related to their playability.

## Important Notes

This module makes *heavy* use of client patching and modification. Because of this, it is recommended to use a [clean, unmodified enUS WoW client](https://www.chromiecraft.com/downloads) as issues have been reported due to use of other clients, such as the one offered from Warmane. The HD patch included on the ChromieCraft website has been known to cause issues with this patch. It is for that reason that it's recommended for you to use the HD patch adapted to this module in particular, which can be found [here](https://github.com/benjymansy123/mod-worgoblin/releases/tag/hd-patch) with instructions on how to install it.

## How to Install

### 1) Download the module

I recommend using git to download the module into your AzerothCore/modules directory with the following command:

```
git clone https://github.com/idempotentiation/mod-worgoblin.git
```

If you choose to manually download the repo, make sure that you delete the -master suffix after extracting the folder to your AzerothCore modules directory.

### 2) Apply the [worgoblin.patch](https://github.com/idempotentiation/mod-worgoblin/blob/master/worgoblin.patch) to your AzerothCore source directory

As of right now, the hooks for allowing custom races are not present in AzerothCore. Because of this, you'll have to manually apply the change required to your AzerothCore source.

I recommend applying the patch with git, as it is less error-prone and will make future AzerothCore updates easier. You can apply the patch with the following commands:

```
git apply --ignore-space-change --ignore-whitespace modules/mod-worgoblin/worgoblin.patch
git add src/server/game/Entities/Player/Player.cpp src/server/game/Handlers/CharacterHandler.cpp src/server/shared/SharedDefines.h
git commit -m "Add worgoblin patch"
```

Alternatively, you can do it manually through a text editor of your choice by changing the lines required where a "-" indicates the original line and a "+" indicates the change necessary. The specific lines can be found after the @@ before each change, where it states the line number. There are a total of seven lines to change and one line to add.

### 2.5) Optional: compatibility patches

#### Playerbots

The Playerbots module uses the player's race to determine whether the player is Alliance or not. Because worgen are not present in the list of Alliance races, Alliance bots will automatically decline any group invitations received by them. This patch adds worgen to the list of Alliance races and allows them to correctly group with bots. Note that goblins don't need any special handling, as any race not in the enumerated list of Alliance races is treated as Horde by Playerbots.

To apply the patch, copy [playerbots.patch](https://github.com/idempotentiation/mod-worgoblin/blob/master/playerbots.patch) to the root of your Playerbots directory and run the following commands from there:

```
git apply --ignore-space-change --ignore-whitespace playerbots.patch
git add src/PlayerbotAI.cpp
git commit -m "Add worgoblin patch"
```

If you didn't install the Playerbots module via git, you can manually add `RACE_WORGEN` to the list of races recognized by the `IsAlliance` function in `mod-playerbots/src/PlayerbotAI.cpp`.

#### Individual Progression

The individual progression module reverts starting weapon skills to their vanilla behavior, meaning that your starting weapon skills are more dependent on your race/class combination. This has the side effect of causing many newly created worgen/goblin classes to be unable to equip their starting weapons. Additionally, the module removes many spells from trainers and reintroduces the quests that were originally required to learn them. Notably, it removes Summon Imp from warlock trainers. Because there are no warlock quests in Teldrassil, this leaves worgen warlocks without any feasible way of learning how to summon their imp.

This patch fixes the issues with starting weapon skills, as well as teaches all newly created worgen warlocks the Summon Imp spell until a custom quest can be added. After you apply the patch, you must rerun the patched SQL files on your world database for the changes to take effect. The files changed are `class_trainers.sql`, `starting_skillbars.sql`, and `weapon_skills.sql`, which can all found in `mod-individual-progression/sql/world/base`.

To apply the patch, copy [individual-progression.patch](https://github.com/idempotentiation/mod-worgoblin/blob/master/individual-progression.patch) to the root of your individual irogression directory and run the following commands from there:

```
git apply --ignore-space-change --ignore-whitespace individual-progression.patch
git add sql/world/base/class_trainers.sql sql/world/base/starting_skillbars.sql sql/world/base/weapon_skills.sql
git commit -m "Add worgoblin patch"
```

Note that you must set `PlayerStart.CustomSpells = 1` in your `worldserver.conf` for the Summon Imp changes to function.

### 3) Replace the DBC files in your AzerothCore Data directory with the ones provided in [DBFilesClient](https://github.com/idempotentiation/mod-worgoblin/tree/master/data/patch/DBFilesClient)

Copy the contents of the DBFilesClient folder (mod-worgoblin/data/patch/DBFilesClient) to your AzerothCore Data/dbc directory (defined by DataDir in worldserver.conf). I recommend backing up your dbc folder before overwriting these files.

### 4) Compile and install AzerothCore.

See AzerothCore's [official documentation](https://www.azerothcore.org/wiki/installing-a-module) for more details about compiling and installing modules.

### 5) Copy the [patch](https://github.com/heyitsbench/mod-worgoblin/tree/master/data/patch) folder (mod-worgoblin/data/patch) to your Data folder in your WoW client and rename it to `patch-A.MPQ`

### 6) Remove signature checks from your WoW executable
I recommend Windows users to use [this patcher](https://www.wowmodding.net/files/file/283-wow-335-patcher-custom-item-fix/) created by kebabstorm to patch your Wow.exe file (also available from [this](https://github.com/anzz1/WoWPatcher335/releases) GitHub repository). I recommend macOS users to download this [pre-patched .app file](https://github.com/benjymansy123/custom-race-ac-12_6_21/releases/download/sig-check/WoW.app.zip), since no easy patcher exists for macOS.

Because WoW uses signature checks so as to not allow Interface files to be modified, we need to remove those checks in order to be able to use custom races. This is accomplished using the patcher included in the repo. Move the patcher into your WoW client directory and run it. Again, feel free to make a backup of your original executable.

And with that, you are all done!

## Credits

* mthsena for creating a repository for the [original script](https://github.com/mthsena/trinitycore_scripts/tree/master/scripts/CustomRaces) for TrinityCore.
* [Helias](https://github.com/Helias) for mentioning the script and adapting the script to AzerothCore.
* [yuan2105](https://github.com/yuanf225) for racing me to get these working and helping me out on multiple occasions.
* [Tanados](https://github.com/helldragonpz) for adapting the HD patch to work with the module.
* Trimitor#3873 for creating the HD patch.
* Various users on various Discords for helping me out on a slew of issues with almost everything. (ragestriker#8037 and Mr.MA#0957 in particular)
