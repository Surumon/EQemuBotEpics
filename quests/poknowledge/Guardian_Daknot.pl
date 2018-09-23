#Guardian_Daknot.pl
#Bot Epic Weapons - Beastlord
#Beastlord Starter Gear
#by Surumon
#
#60328 Familiar Ring 					-- Mistmoore Castle
#22527 Essence of Sunlight 				-- Sand Giants
#96909 Hearty Shissar Blood				-- The Grey
#11889 Forged Deathsteel Mace			-- Smithing, Trivial 147
#9979 Gloomingdeep Lantern				-- PC Starting Item
#Quest giver will reward the player after money and items are given. Bot epic is temporary and has a level requirement to keep people from twinking it to level 1 characters.

sub EVENT_SAY {
	if($text=~/Hail/i) {
		quest::say("Well met! Do you seek a replica of the [Power of Savage], gear for a starting [beastlord], or some other kind of [help]?"); #Class we offer
	}
	if($text=~/Power of Savage/i) {
		quest::say("If you seek that power then bring me five thousand platinum and the following items: a familiar ring, an essence of sunlight, some hearty shissar blood, and a forged deathsteel mace."); #Bot Beastlord Epic Needs
	}
	if($text=~/beastlord/i) {
		quest::say("Merely hand over that Gloomingdeep Lantern and I shall give you a foreman's tunic and a fighting baton."); #Starter Gear - Lantern Hand-In
	}
	if($text=~/help/i) {
		quest::say("Most answers can be found by reading this. I suggest you do."); #In Game Help Note
		quest::summonitem(147513);
	}   
}

sub EVENT_ITEM {
my $cash = $platinum;
	if ($cash >= 5000) { #5000 Platinum, Exact Change Only
		if (plugin::check_handin(\%itemcount, 60328 => 1, 22527 => 1, 96909 => 1, 11889 => 1)) {
			quest::say("Very good, you have earned this reward! Heed my words: This weapon may disappear if not given to it's owner immediately!");
			quest::shout2("Let it be known that on this day, $name has braved the challenges and has been rewarded the Power of Nem Ankh!");
			quest::ding();
			quest::summonitem(147497); #Copied version of the epic -- temporary and level 45 requirement to prevent twinks.
			quest::summonitem(147498); #Copied version of the epic -- temporary and level 45 requirement to prevent twinks.
		}
	}
	elsif (plugin::check_handin(\%itemcount, 9979 => 1)) {
		quest::say("May they bring you fortune and glory!");
		quest::ding();
		quest::summonitem(2341); #Foreman's Tunic
		quest::summonitem(6625); #Fighting Baton
	}
	else {
		quest::givecash(0, 0, 0, $platinum); #Return money, Only Platinum
		plugin::return_items(\%itemcount); #Return Bad Items
	}
}