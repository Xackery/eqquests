#!quest|trickortreat|1
#!reward|84091
#!reward|84092
#!reward|84093
#!reward|84088
#!reward|84088
#!reward|84088
#!reward|84088
#!reward|84088
#!reward|84088
#!reward|84088
#!ignore
sub EVENT_SPAWN {
  quest::settimer("ec_Ragus", 45);
}

sub EVENT_SAY {
  if ($text=~/trick or treat/i) {
    quest::say("Hah! Here's the tastiest treat of them all! Enjoy!");
    quest::summonitem(quest::ChooseRandom(84091, 84092, 84093, 84088, 84088, 84088, 84088, 84088, 84088, 84088));
    quest::updatetaskactivity(220, 2);
  }
}

sub EVENT_TIMER {
  if ($timer eq "ec_Ragus") {
    quest::shout("Trick or treat! Smell my feet! Give me something good to eat!");
  }
}