# EQemuBotEpics

## Intro
If you're using a brand new install from Akka's newer repack, you might find some Merc Liasons in the Plane of Knowledge that don't do anything. If you installed bots on your server, you might also notice that you need to farm gear for them. So, you ask yourself: "How can I get my bots epic weapons for those hard raids later? What ever will I do!?"
The answer? You install my scripts and do a tiny bit of database editing using a pre-made easy to run MySQL script that adds the items, renames the NPCs, and gets you those sweet, sweet bot epics. Want to know more?

## What Heckin' Does It?
What does my code do precisely? Glad you asked!
1. Renames all the Mercenary Liasons in the Plane of Power to assist with /find to tell you what class they're for.
2. Provides the necessary weapons for the bots. I have attempted to balance them to prevent abuse on live servers. Infinite right-click items have their spells removed, they have a level requirement of 45, and finally they are temporary to keep players from logging out with them. Players that are the same race can still attempt to quest them, but they will always be less useful than if they just did their epic quests to begin with.
3. Adds quests to each NPC to earn that epic bot gear. Each quest requires the following: 5000 platinum, a familiar ring (Castle Mistmoor), a crafted item that relates to the class, drops from level 38-50 mobs. If you think 5000 platinum isn't a lot, remember a full raid of 71 bots - that's a grand total of 335k platinum. Three full groups, 17 bots - 85k. Five bots for your group - 25k.
4. Gives starter gear for handing in that Gloomingdeep Lantern. Essentially, you get some mid-range gear usable from level 1 for either yourself or a bot if you give them that useless Gloomingdeep Lantern you start with. I suggest you add this notice to your /motd or whatever starter notice you give your players.
5. I provide a simple patch for any players using a fresh install of Titanium.

## Configurable?
Sure it is, you just have to go in an edit the scripts which are COMMENTED TO MAKE THEM EASY TO UNDERSTAND. Because I hate leaving people in the dark with no comment code. Make your requirements as extreme or as simple as you want.

## Requirements
Seriously, let's be serious for a moment. My code works best with the following:
1. CLIENTS ONLY: **Fresh** Install of EQ Titanium; rename **nektulos.eqg** to **nektulos.eqg.bak** and **Nektulos_EnvironmentEmitters.txt** to **Nektulos_EnvironmentEmitters.txt.bak**, and Client files (provided in repo).**
2. Download the EQemu server from here, follow Akka's guide: https://github.com/Akkadius/EQEmuInstall/wiki/EQEmu-Readme
3. Minor understanding of Heidi SQL and the directory structure of EQemu.

## Installation
Here is where I will tell you how to install everything -- When I am finished as I haven't finished this yet. Expect it in a few weeks!
