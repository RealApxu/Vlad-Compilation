BEGIN ~SIMESL~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~My <PRO_LADYLORD>, I must be brief. My terrible Master will come searching for me if I do not return promptly. I am one of the noble ladies imprisoned by the most awful dragon. We beg you to save us, my good <PRO_SIRMAAM>.~
  IF ~~ THEN REPLY ~That�s why I am here, my good Lady. Care to give me more instructions?~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~The Dragon, whose true name is too terrible to pronounce, is in this cave and so are all of his captives. I had a vision that the most honorable warrior is coming to deliver us from our misfortune and I have taken few items from the treasure hoard that might help you in your quest, <PRO_SIRMAAM>. Please, hurry!~
  IF ~~ THEN DO ~GiveItemCreate("FanSwor1",Player1,0,0,0) GiveItemCreate("FanSwor2",Player1,0,0,0) GiveItemCreate("FanRing",Player1,0,0,0) GiveItemCreate("FanStar",Player1,0,0,0) GiveItemCreate("FanMace",Player1,0,0,0) GiveItemCreate("FanStaff",Player1,0,0,0) GiveItemCreate("FanRobe",Player1,0,0,0) GiveItemCreate("FanPotn1",Player1,1,0,0) GiveItemCreate("FanPotn2",Player1,3,0,0) GiveItemCreate("FanPotn3",Player1,1,0,0) EscapeArea()~ EXIT
END