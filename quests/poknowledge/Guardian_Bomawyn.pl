#Guardian_Bomawyn.pl
#Bot Epic Weapons - Magician
#Magician Starter Gear
#by Surumon
#
#60328 Familiar Ring 					-- Mistmoore Castle
#22527 Essence of Sunlight 				-- Sand Giants
#96909 Hearty Shissar Blood				-- The Grey
#7897 Forged Firebrand Dagger			-- Smithing, Trivial 106
#9979 Gloomingdeep Lantern				-- PC Starting Item
#Quest giver will reward the player after money and items are given. Bot epic is temporary and has a level requirement to keep people from twinking it to level 1 characters.

sub EVENT_SAY {
	if($text=~/Hail/i) {
		quest::say("Well met! Do you seek a replica of the [Power of Mastery], gear for a starting [magician], or some other kind of [help]?"); #Class we offer
	}
	if($text=~/Power of Mastery/i) {
		quest::say("If you seek that power then bring me five thousand platinum and the following items: a familiar ring, an essence of sunlight, some hearty shissar blood, and a forged firebrand dagger."); #Bot Magician Epic Needs
	}
	if($text=~/magician/i) {
		quest::say("Merely hand over that Gloomingdeep Lantern and I shall give you a fire crystal staff and shining metallic robes."); #Starter Gear - Lantern Hand-In
	}
	if($text=~/help/i) {
		quest::say("Most answers can be found by reading this. I suggest you do."); #In Game Help Note
		quest::summonitem(147513);
	}   
}

sub EVENT_ITEM {
my $cash = $platinum;
	if ($cash >= 5000) { #5000 Platinum, Exact Change Only
		if (plugin::check_handin(\%itemcount, 60328 => 1, 22527 => 1, 96909 => 1, 7897 => 1)) {
			quest::say("Very good, you have earned this reward! Heed my words: This weapon may disappear if not given to it's owner immediately!");
			quest::shout2("Let it be known that on this day, $name has braved the challenges and has been rewarded the Power of Mastery!");
			quest::ding();
			quest::summonitem(147503); #Copied version of the epic -- temporary and level 45 requirement to prevent twinks.
		}
	}
	elsif (plugin::check_handin(\%itemcount, 9979 => 1)) {
		quest::say("May they bring you fortune and glory!");
		quest::ding();
		quest::summonitem(1360); #Shining Metallic Robes
		quest::summonitem(6324); #Fire Crystal Staff
	}
	else {
		quest::givecash(0, 0, 0, $platinum); #Return money, Only Platinum
		plugin::return_items(\%itemcount); #Return Bad Items
	}
}