#Guardian_Helind.pl
#Low-Rank Gachapon
#by Surumon
#
#Asks for 25 platinum from the player and will reward a random item, with a ~5% chance at a rare item ticket.
#
#Random Gachapon Items:
#147514 - Rare Gacha Ticket
#14641	- Electrum Amber Earring
#65616	- Electrum Amethyst Ring
#14621	- Electrum Bloodstone Necklace
#10358	- Electrum Bracelet
#14633	- Electrum Carnelian Wedding Ring
#14617	- Electrum Cat Eye Bracelet
#14677	- Electrum Fire Wedding Ring
#65626	- Electrum Geode Ring
#14629	- Electrum Jasper Earring
#14605	- Electrum Lapis Lazuli Earring
#14601	- Electrum Malachite Bracelet
#58707	- Electrum Nihilite Earring
#14625	- Electrum Onyx Pendant
#14669	- Electrum Opal Amulet
#65606	- Electrum Polished Quartz Ring
#14637	- Electrum Star Amulet
#14609	- Electrum Turquoise Engagement Ring
#14649	- Jaded Electrum Bracelet
#14657	- Topaz Electrum Earring
#14645	- Wolf's Eye Electrum Bracelet
#
#Rare Ticket Items:
#34078	- Fabled Ancient Sensate Cloak
#68285	- Fabled Bag of Sewn Evil-Eye
#68249	- Fabled Barnacle-covered Pauldron
#68275	- Fabled Batskull Earring
#68246	- Fabled Bloodstained Mantle
#82728	- Fabled Burynai Digmaster's Claw
#68230	- Fabled Cloth Cap
#68231	- Fabled Dagger of Marnek
#68284	- Fabled Dragoon Dirk
#68287	- Fabled Fippy's Paw
#68280	- Fabled Gargantuan Tarantula Leg
#68257	- Fabled Gigantic Zweihander
#68281	- Fabled Glowing Black Stone
#82740	- Fabled Golden Pendant
#68236	- Fabled Hooded Black Cloak
#68245	- Fabled Ivy Etched Tunic
#68239	- Fabled Journeyman's Boots
#68240	- Fabled Molten Cloak
#68242	- Fabled Pegasus Feathered Cloak
#68278	- Fabled Polished Bone Bracer
#68258	- Fabled Polished Bone Tomahawk
#36699	- Fabled Rations
#68282	- Fabled Ring of the Ancients
#68248	- Fabled Runed Circlet
#68273	- Fabled Runed Oak Bow
#68264	- Fabled Screaming Mace
#68267	- Fabled Slime Crystal Staff
#68269	- Fabled Water Crystal Staff
#68276	- Fabled White Gold Necklace
#68241	- Fabled White Wolf-hide Cloak

sub EVENT_SAY {
	if($text=~/Hail/i) {
		quest::say("Hello, hello! Welcome to the [low gachapon]! Try your luck today and you may get a [rare ticket], or did you need some [help]?");
	}
	if($text=~/low gachapon/i) {
		quest::say("Yes, yes. For a mere ten platinum, you may reach into this magical bag and take one item. You may play as many times as you like to try your luck at a [rare ticket].");
	}
	if($text=~/rare ticket/i) {
		quest::say("Rarity, indeed! Should you manage to get one, you can try for even rarer items. Simply give me that ticket and I will let you pull an item out of a different bag.");
	}
	if($text=~/help/i) {
		quest::say("Most answers can be found by reading this. I suggest you do."); #In Game Help Note
		quest::summonitem(147513);
	}   
}

sub EVENT_ITEM {
my $cash = $platinum;
	if ($cash >= 25) { #25 Platinum, Exact Change Only
		quest::say("Reach into my magic bag and grab a prize. I hope it's good!");
		quest::ding();
		quest::ChooseRandom(147514, 14641, 65616, 14621, 10358, 14633, 14617, 14677, 65626, 14629, 14605, 14601, 58707, 14625, 14669, 65606, 14637, 14609, 14649, 14657, 14645); #Random Item, See List Above
	}
	elsif (plugin::check_handin(\%itemcount, 147514 => 1)) {
		quest::say("Reach into this other, more special, bag. Best of luck to you!");
		quest::ding();
		quest::ChooseRandom(34078, 68285, 68249, 68275, 68246, 82728, 68230, 68231, 68284, 68287, 68280, 68257, 68281, 82740, 68236, 68245, 68239, 68240, 68242, 68278, 68258, 36699, 68282, 68248, 68273, 68264, 68267, 68269, 68276, 68241); #Random Rare Item, See Above
	}
	else {
		quest::givecash(0, 0, 0, $platinum); #Return money, Only Platinum
		plugin::return_items(\%itemcount); #Return Bad Items
	}
}