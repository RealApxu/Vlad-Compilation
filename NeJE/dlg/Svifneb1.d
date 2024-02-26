BEGIN ~Svifneb1~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Please, we did not wish to harm the world above, it is not our way.~
=
~Ilriana brought us here saying we will take riches back to our village and make things more comfortable for everyone, the drow allow us so little back home.~ 
=
~She forced us to dig with no thought to what we might disturb, no plans, no observations. What is to become of us now?~
  IF ~~ THEN REPLY ~Tell me what it was Ilriana was searching for and then you will be free to leave.~ GOTO 2
  IF ~~ THEN REPLY ~You will hand over everything Ilriana found to me and then I will decide whether you are to continue digging or not.~ GOTO 2
  IF ~~ THEN REPLY ~You have no reason to fear me. Pack your things, you are free to return to your village.~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~For all the time we were digging, this is all we found.~
=
~We have not seen the likes of this ore before, and it is unfortunate that there is not enough to forge to test its usefulness.~
=
~If there was more here then it has been taken from the ground a very long time ago.~
  IF ~Global("SPRITE_IS_DEADGraeme","GLOBAL",1)~ THEN REPLY ~(*You examine the small nugget closely. It has a strange hue that you have seen before, and you think to yourself, could this be... rithtellium, or at least the base ore? Then turning your attention back to the gnomes.*) If you gnomes do not know what this is then I guess I will be hard pressed to find someone that does. You and your friends are free to go to your homes.~ DO ~GiveItemCreate("RithOre",LastTalkedToBy,0,0,0)~ GOTO 3
  IF ~~ THEN REPLY ~(*Examine the nugget*) I am no smith but I know most ores when I see them, not this one though. I wish there was more of it, but if as you say there is no more then you and your friends are of no use to me, you are free, go home.~ DO ~GiveItemCreate("RithOre",LastTalkedToBy,0,0,0)~ GOTO 3
  IF ~~ THEN REPLY ~(*Examine the nugget*) I will hang on to this, I am sure to find someone who will know what it is and maybe even buy it from me. You and your fellows are free to leave.~ DO ~GiveItemCreate("RithOre",LastTalkedToBy,0,0,0)~ GOTO 3
  IF ~~ THEN REPLY ~(*Examine the nugget*) A lot of bother for such a small piece of nothing. Ok gnomes, you may as well pack up and go home.~ DO ~GiveItemCreate("RithOre",LastTalkedToBy,0,0,0)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~I thank you from us all, and if you should ever find your way to our village, you will be welcome as if you were one of our own. Svifneblin never forget those who have aided them.~
		IF ~~ THEN DO ~ActionOverride("Svifneb2",EscapeArea())
ActionOverride("Svifneb3",EscapeArea())
EscapeArea()~ EXIT
END