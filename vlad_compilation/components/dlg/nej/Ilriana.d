BEGIN ~ILRIANA~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~What are you stopping for, you have rested once already today. Keep digging you lazy, misshapen... (*Then spinning around as she hears your approach*) Who the blazes are you?~
  = ~You should know better than to creep up on a lady when she has her back to you, especially if the lady in question is an accomplished mage such as myself.~
  IF ~~ THEN REPLY ~I am <CHARNAME> and you are?~ GOTO 2
  IF ~~ THEN REPLY ~And hello to you too.  I am <CHARNAME>, Might I ask who you are?~ GOTO 2
  IF ~~ THEN REPLY ~I apologise for startling you. I am <CHARNAME>. Might I ask who you might be and what you are looking for down here?~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~I am Ilriana, please, now that the pleasantries are over, go away!~
  IF ~~ THEN REPLY ~A bit more civility please Ilriana. Tell me, what can possibly be down here to cause such frantic digging?~ GOTO 4
  IF ~~ THEN REPLY ~Come now Ilriana, tell me what is so valuable that you have gnomes searching for you? You're an accomplished mage, why not just blast your way through the rock?~ GOTO 5
  IF ~~ THEN REPLY ~I most certainly will not go away, not until you tell me why you have enslaved these gnomes?~ GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY ~Apology accepted. I am Ilriana and what I am looking for is non of your business so please, go away!~
  IF ~~ THEN REPLY ~A bit more civility please Ilriana. Tell me, what can possibly be down here to cause such frantic digging?~ GOTO 4
  IF ~~ THEN REPLY ~Come now Ilriana, tell me what is so valuable that you have gnomes searching for you? You're an accomplished mage, why not just blast your way through the rock?~ GOTO 5
  IF ~~ THEN REPLY ~I most certainly will not go away, not until you tell me why you have enslaved these gnomes?~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY ~I was not aware I was being anything but civil seeing as you are the intruder here. I have asked you nicely to please go away, what I do here does not concern you or anyone else. If I have to ask you to leave again, I may not be quite so civil.~
  IF ~~ THEN REPLY ~It is my concern when your digging pollutes the earth above. I must ask you to cease what ever it is you are doing now.~ GOTO 6
  IF ~~ THEN REPLY ~How long have you been digging Ilriana? A while I would guess and yet I see nothing to show for your efforts. In fact, the mine looks depleted to me, whatever you want was probably removed a long time ago. Give it up Ilriana, stop despoiling the earth above.~ GOTO 6
  IF ~~ THEN REPLY ~Do not threaten me Ilriana, believe me you will come off worse!~ GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY ~Look, I have asked you nicely to please go away. What I do and how I do it does not concern you or anyone else. If I have to ask you to leave again, I may not ask quite so nicely.~
  IF ~~ THEN REPLY ~It is my concern when your digging pollutes the earth above. I must ask you to cease what ever it is you are doing now.~ GOTO 6
  IF ~~ THEN REPLY ~How long have you been digging Ilriana? A while I would guess and yet I see nothing to show for your efforts. In fact, the mine looks depleted to me, whatever you want was probably removed a long time ago. Give it up Ilriana, stop despoiling the earth above.~ GOTO 6
  IF ~~ THEN REPLY ~Do not threaten me Ilriana, believe me you will come off worse!~ GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY ~What do I care for the earth above, what is down here will benefit mages everywhere and make me a very rich and powerful woman.~
  = ~I will continue to dig, even if I have to reach into the bowels of the Nine Hells and rip it out with my bare hands! Now, begone all of you!~
  IF ~~ THEN REPLY ~I cannot permit you to do that. I believe your digging is allowing poisonous vapours to seep into the underground feeds to the pond above, the land is dying. Please Ilriana, you must stop!~ GOTO 7
  IF ~~ THEN REPLY ~You will stop Ilriana. I will not permit your greed to continue poisoning that which is struggling above. Cease now or pay the price for your greed!~ GOTO 7
  IF ~~ THEN REPLY ~Ok. Maybe I do not want all this trouble after all. I will just back up and leave the way I came. The druids can take it from here.~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~I think not. This has become tiresome, first you interrupt my work and now you force me to deal with you, wasting yet more time! No matter, my gnomes can make up the delay later.~
  IF ~~ THEN DO ~SetGlobal("VP_Dar_Quest","GLOBAL",11) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~That was no threat, that was a promise. What is down here will benefit mages everywhere, as well as  making me a very rich and very  powerful woman.~
  = ~I am not about to let anyone take that from me, I will continue to dig, even if I have to reach into the bowels of the Nine Hells to find and rip it out with my bare hands! Now, begone all of you!~
  IF ~~ THEN REPLY ~Come Ilriana, a deal. Would you not prefer to have a half share in whatever is going to buy you all this power than no share at all? You get my meaning!~ GOTO 7
  IF ~~ THEN REPLY ~A promise you say Ilriana. Do you seriously consider yourself a match for us? You do not have this power that you seek quite yet, maybe you should think again about that promise?~ GOTO 7
  IF ~~ THEN REPLY ~Ok. Maybe I do not want all this trouble after all. I will just back up and leave the way I came. The druids can take it from here.~ GOTO 7
END