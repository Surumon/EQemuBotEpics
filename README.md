# EQemuBotEpics

## Intro
If you're using a brand new install from Akka's newer repack, you might find some Merc Liasons in the Plane of Knowledge that don't do anything. If you installed bots on your server, you might also notice that you need to farm gear for them. So, you ask yourself: *"How can I get my bots epic weapons for those hard raids later? What ever will I do!?"* The answer? You install my scripts and do a tiny bit of database editing using a pre-made easy to run MySQL script that adds the items, renames the NPCs, and gets you those sweet, sweet bot epics. Want to know more?

**BIG NOTE: If you have your server auto-update the MySQL database or the EQemu files and it over writes any of my quest scripts or database entries, this will stop working immediately, and entirely. You should either disable auto-updates or update manually to avoid such things from happening.**

## What Heckin' Does It?
What does my code do precisely? Glad you asked!
1. Renames all the Mercenary Liasons in the Plane of Power to assist with /find to tell you what class they're for.
2. Provides the necessary weapons for the bots. I have attempted to balance them to prevent abuse on live servers. Infinite right-click items have had their spells removed, they have a level requirement of 45, and finally they are temporary to keep players from logging out with them. Players that are the same class can still attempt to quest and use the item, but they will always be less useful than if they just did their epic quests to begin with. Also, these cannot be used for the 1.5 or 2.0 epics.
3. Adds quests to each NPC to earn that epic bot gear. Each quest requires the following: 5000 platinum, drops from level 38-50 mobs, and a crafted firebrand or deathsteel weapon that relates to that class. If you think 5000 platinum isn't a lot, remember a full raid of 71 bots - that's a grand total of **335,000** platinum. Three full groups, 17 bots - **85,000**. Five bots for your group - **25,000**.
4. Gives starter gear for handing in that Gloomingdeep Lantern. Essentially, you get some mid-range gear usable from level 1 for either yourself or a bot if you hand in that useless Gloomingdeep Lantern you start with. I suggest you add this notice to your /motd or whatever starter notice you give your players. It also adds a configurable note that your NPCs will hand out when asked for help. You can change this in the database to say whatever you want very easily.
5. Changes a few of the spare liasons into additional *fun stuff* like Gachapon's or crafting helpers *(enchanted bars for Jewelery, for example)*. I also provide a reworded file for the bot quest giver in the Bazaar to make the bots not slaves but hired mercenaries.
6. I provide a simple patch for any players using a fresh install of Titanium to fix missing model issues with Snakes and Spiders as well as explain how to avoid the random floating effects in Nektulos and make the zone work enough to move through it.

## Configurable?
Sure it is, you just have to go in an edit the scripts which are **COMMENTED TO MAKE THEM EASY TO UNDERSTAND**. Because I hate leaving people in the dark with no comments on code. Make your requirements as extreme or as simple as you want. More info will be posted in the Wiki with a *How-To*.

## Requirements
Seriously, let's be serious for a moment. My code works best with the following:
1. CLIENTS ONLY: **Fresh** Install of EQ Titanium; rename **nektulos.eqg** to **nektulos.eqg.bak** and **Nektulos_EnvironmentEmitters.txt** to **Nektulos_EnvironmentEmitters.txt.bak**, and Client files [provided in repo](https://github.com/Surumon/EQemuBotEpics/tree/master/client/Resources).
2. **Fresh** Install of the EQemu server. Download the EQemu server from [here](https://github.com/Akkadius/EQEmuInstall/wiki/EQEmu-Readme), follow the guide!
3. Minor understanding of Heidi SQL and the directory structure of EQemu folders for installation of my quest scripts and database entries.

## Installation
Here is where I will tell you how to install everything -- When I am finished as I haven't finished this yet. Expect it in a few weeks!

Check the [Wiki](https://github.com/Surumon/EQemuBotEpics/wiki) for more information on everything from installation, configuration, to the Mobs you need to kill to get the items.

Have fun!

### Version/Date
1.0 - TBA
