#Guardian_Drendle.pl
#Bot Epic Weapons - Bard
#Bard Starter Gear
#by Surumon
#
#60328 Familiar Ring 					-- Mistmoore Castle
#22527 Essence of Sunlight 				-- Sand Giants
#96909 Hearty Shissar Blood				-- The Grey
#11886 Forged Deathsteel Short Sword	-- Smithing, Trivial 143
#9979 Gloomingdeep Lantern				-- PC Starting Item
#Quest giver will reward the player after money and items are given. Bot epic is temporary and has a level requirement to keep people from twinking it to level 1 characters.

sub EVENT_SAY {
	if($text=~/Hail/i) {
		quest::say("Well met! Do you seek a replica of the [Power of Song], gear for a starting [bard], or some other kind of [help]?"); #Class we offer
	}
	if($text=~/Power of Song/i) {
		quest::say("If you seek that power then bring me five thousand platinum and the following items: a familiar ring, an essence of sunlight, some hearty shissar blood, and a forged deathsteel short sword."); #Bot Bard Epic Needs
	}
	if($text=~/bard/i) {
		quest::say("Merely hand over that Gloomingdeep Lantern and I shall give you a lambent breastplate and a cat o'nine tails."); #Starter Gear - Lantern Hand-In
	}
	if($text=~/help/i) {
		quest::say("Most answers can be found by reading this. I suggest you do."); #In Game Help Note
		quest::summonitem(147513);
	}   
}

sub EVENT_ITEM {
my $cash = $platinum;
	if ($cash >= 5000) { #5000 Platinum, Exact Change Only
		if (plugin::check_handin(\%itemcount, 60328 => 1, 22527 => 1, 96909 => 1, 11886 => 1)) {
			quest::say("Very good, you have earned this reward! Heed my words: This weapon may disappear if not given to it's owner immediately!");
			quest::shout2("Let it be known that on this day, $name has braved the challenges and has been rewarded the Power of Song!");
			quest::ding();
			quest::summonitem(147496); #Copied version of the epic -- temporary and level 45 requirement to prevent twinks.
		}
	}
	elsif (plugin::check_handin(\%itemcount, 9979 => 1)) {
		quest::say("May they bring you fortune and glory!");
		quest::ding();
		quest::summonitem(4154); #Lambent Breastplate
		quest::summonitem(5058); #Cat o'Nine Tails
	}
	else {
		quest::givecash(0, 0, 0, $platinum); #Return money, Only Platinum
		plugin::return_items(\%itemcount); #Return Bad Items
	}
}