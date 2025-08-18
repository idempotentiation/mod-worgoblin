# This module is (mostly) no longer being maintained.

# Worgoblin Module

[![core-build](https://github.com/benjymansy123/mod-worgoblin/actions/workflows/core-build.yml/badge.svg)](https://github.com/benjymansy123/mod-worgoblin/actions/workflows/core-build.yml)

This is a module for [AzerothCore](http://www.azerothcore.org) that adds worgen, goblins, and numerous features related to their playability.

## Important Notes

This module makes *heavy* use of client patching and modification. Because of this, it is recommended to use a [clean, unmodified enUS WoW client](https://www.chromiecraft.com/downloads) as issues have been reported due to use of other clients, such as the one offered from Warmane. The HD patch included on the ChromieCraft website has been known to cause issues with this patch. It is for that reason that it's recommended for you to use the HD patch adapted to this module in particular, which can be found [here](https://github.com/benjymansy123/mod-worgoblin/releases/tag/hd-patch) with instructions on how to install it.

## How to Install

As of right now, the hooks for allowing custom races are not present in AzerothCore. Because of this, you'll have to manually apply the change required to your AzerothCore source.

### 1) Download the module

I recommend using git to download the module into your AzerothCore/modules directory with the following command:

`git clone https://github.com/idempotentiation/mod-worgoblin.git`

If you choose to manually download the repo, make sure that you delete the -master suffix after extracting the folder to your AzerothCore modules directory.

### 2) Apply the [worgoblin.patch](https://github.com/benjymansy123/mod-worgoblin/blob/master/worgoblin.patch) to your AzerothCore source directory

This can be accomplished in a couple different ways. If you have git installed, you use the following command from the root of your AzerothCore directory:

`git apply --ignore-space-change --ignore-whitespace modules/mod-worgoblin/worgoblin.patch`

Alternatively, you can do it manually through a text editor of your choice by changing the lines required where a "-" indicates the original line and a "+" indicates the change necessary. The specific lines can be found after the @@ before each change, where it states the line number. There are a total of seven lines to change and one line to add.

### 3) Replace the DBC files in your AzerothCore Data directory with the ones provided in [DBFilesClient](https://github.com/heyitsbench/mod-worgoblin/tree/master/data/patch/DBFilesClient)

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
