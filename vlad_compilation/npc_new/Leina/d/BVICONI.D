APPEND ~BVICONI~

IF ~~ THEN BEGIN NEJ0
  SAY ~Whilst you persist in leading these males into believing they are a females equal I will have none of your surface games. (*She turns her back and spits out her next words*) Jal shinduago jalilen ph' jal yibin!~
  IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~BLEINA~ PCF2Leina31a
  IF ~Gender(Player1,MALE)~ THEN EXTERN ~BLEINA~ PCM4Leina31a
END

IF ~~ THEN BEGIN LeiSpher1
  SAY ~How pathetic. You surface dwellers are prepared to fight like dogs in heat over such a pitiful female... if that's what you want to call her.~
  IF ~~ THEN EXTERN ~BLEINA~ Sphere8a
END

IF ~~ THEN BEGIN LeiSpher2
  SAY ~For once a male has half an idea which is about as good as a half elf, maybe the males should split her in half the whole thing is pathetic.~
  IF ~~ THEN EXTERN ~BLEINA~ Sphere13a
END

IF ~~ THEN BEGIN LeiSpher3
  SAY ~You surface dwellers are so stupid. Who really cares?~
  IF ~True()~ THEN EXTERN ~BLEINA~ Sphere10
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher1
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher1
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher2
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiSpher1
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiSpher4
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiSpher1
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiSpher1
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~Then keep it yourself, your mundane thoughts are of no interest to me.~
  IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~BTAFFIC~ LeiTheat
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN ~BDAR~ LeiTheat
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN ~BHROTH~ LeiTheat
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~Bah! You surfacers and your infantile minds! It is no wonder you have not progressed, unlike the drow! Udos zhal ilstar ultrin... you will see!~
  IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~BTAFFIC~ LeiThea3
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea3
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN ~BDAR~ LeiThea3
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN ~BHROTH~ LeiThea3
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~Children, you are all nought but children! It's no wonder you surfacers struggle to survive... udos zhal ilstar ultrin!~
  IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~BTAFFIC~ LeiThea4
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea4
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN ~BDAR~ LeiThea4
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN ~BHROTH~ LeiThea4
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~Go play your foolish prank! If the half elf hasn't sussed you yet then the half breed deserves to be made a fool of.~
  = ~(*She spits out her next words*) Kitrye kyuvren ph' nau mzild darthirii taga ph' rothe!~
  IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ151
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~BTAFFIC~ LeiThea1
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea1
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN ~BDAR~ LeiThea1
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN ~BHROTH~ LeiThea1
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~Leina, I need no such silly songs. But if you must, be sure you tell of how I ripped the beasts hearts out with my bare hands and laid them open for the vultures to feed on their soft parts.~
  IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ161
END

IF ~~ THEN BEGIN RadianQ
  SAY ~Bah! You bard, you couldn't handle an evil thought if one ever took a hold on you, you'd soil your pants and fall down screaming!~
  IF ~~ THEN EXTERN ~BLEINA~ RadiQ19A
END

IF ~~ THEN BEGIN LeiRadia
  SAY ~Surfacers! Your fetish for fluffy towels is unhealthy girl, some one needs to give you a good rub down with a horse blanket. That'll cure all this jumping into hot water every spare minute!~
  IF ~~ THEN EXTERN ~BLEINA~ RadiQ21B
END

END