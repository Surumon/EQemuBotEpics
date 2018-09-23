#Guardian_Jarenth.pl
#Bot Epic Weapons - Ranger
#Ranger Starter Gear
#by Surumon
#
#60328 Familiar Ring 					-- Mistmoore Castle
#22527 Essence of Sunlight 				-- Sand Giants
#96909 Hearty Shissar Blood				-- The Grey
#11887 Forged Deathsteel Long Sword		-- Smithing, Trivial 150
#9979 Gloomingdeep Lantern				-- PC Starting Item
#Quest giver will reward the player after money and items are given. Bot epic is temporary and has a level requirement to keep people from twinking it to level 1 characters.

### Stuff that was already in a script, so we don't mess anything up

sub EVENT_SPAWN
{
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 90, $x + 90, $y - 90, $y + 90);
}

sub EVENT_ENTER
{
	quest::signal(202274,5); #Nomaad
}

### End of stuff that was already in the script

sub EVENT_SAY {
	if($text=~/Hail/i) {
		quest::say("Well met! Do you seek a replica of the [Power of Earth and Wind], gear for a starting [ranger], or some other kind of [help]?"); #Class we offer
	}
	if($text=~/Power of Earth and Wind/i) {
		quest::say("If you seek that power then bring me five thousand platinum and the following items: a familiar ring, an essence of sunlight, some hearty shissar blood, and a forged deathsteel long sword."); #Bot Ranger Epic Needs
	}
	if($text=~/ranger/i) {
		quest::say("Merely hand over that Gloomingdeep Lantern and I shall give you an orc impaler and mithril breastplate."); #Starter Gear - Lantern Hand-In
	}
	if($text=~/help/i) {
		quest::say("Most answers can be found by reading this. I suggest you do."); #In Game Help Note
		quest::summonitem(147513);
	}   
}

sub EVENT_ITEM {
my $cash = $platinum;
	if ($cash >= 5000) { #5000 Platinum, Exact Change Only
		if (plugin::check_handin(\%itemcount, 60328 => 1, 22527 => 1, 96909 => 1, 11887 => 1)) {
			quest::say("Very good, you have earned this reward! Heed my words: This weapon may disappear if not given to it's owner immediately!");
			quest::shout2("Let it be known that on this day, $name has braved the challenges and has been rewarded the Power of Earth and Wind!");
			quest::ding();
			quest::summonitem(147507); #Copied version of the epic -- temporary and level 45 requirement to prevent twinks.
			quest::summonitem(147508); #Copied version of the epic -- temporary and level 45 requirement to prevent twinks.
			}
	}
	elsif (plugin::check_handin(\%itemcount, 9979 => 1)) {
		quest::say("May they bring you fortune and glory!");
		quest::ding();
		quest::summonitem(7330); #Orc Impaler
		quest::summonitem(4309); #Mithril Breastplate
	}
	else {
		quest::givecash(0, 0, 0, $platinum); #Return money, Only Platinum
		plugin::return_items(\%itemcount); #Return Bad Items
	}
}