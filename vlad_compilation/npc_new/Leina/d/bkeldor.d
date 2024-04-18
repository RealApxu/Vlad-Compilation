APPEND BKELDOR

IF ~~ THEN BEGIN NEJ0
  SAY ~That hasn't done these old bones of mine much good... which way to my bed?~
  IF ~Gender(Player1,FEMALE) !InParty("njmelora")~ THEN EXTERN VPLEIB PCF2Leina38a
  IF ~Gender(Player1,MALE) !InParty("njmelora")~ THEN DO ~SetGlobal("VP_Danicng_Queen","GLOBAL",2)~ EXIT
  IF ~Gender(Player1,FEMALE) InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 53
  IF ~Gender(Player1,MALE) InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 56
  IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
  IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0
  IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ0
  IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ57
END

IF ~~ THEN BEGIN NEJ1
  SAY ~I have not danced with another since the day I met my Maria. I knew then that I would never dance or hold another woman in my arms.~
  IF ~~ THEN EXTERN VPLEIB PCF2Leina32a
END

IF ~~ THEN BEGIN NEJ2
  SAY ~(*A little flustered*) I didn't mean to imply that there was anything inappropriate in your suggestion Leina. I know that you...~
  IF ~Gender(Player1,FEMALE)~ THEN EXTERN VPLEIB PCF2Leina33a
  IF ~Gender(Player1,MALE)~ THEN EXTERN VPLEIB PCM4Leina33a
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~So my friend, tell us what has brought so bright a gleam to your eye?~
  IF ~!IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiTheat
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiTheat
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiTheat
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiTheat
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiTheat
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiTheat
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiTheat
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiTheat
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~(*Laughs heartily*) Leina is a clever lass... We are talking about Leina here are we not? Me thinks you are being a little presumptuous with that statement my friend.~
  IF ~!IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea3
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea3
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea3
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea3
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea3
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea3
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea3
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea3
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea3
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~(*Sighing*) I have outgrown such behaviour, but I remember, only just, what it was to be young. I will not spoil the jest.~
  IF ~!IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea4
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea4
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea4
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea4
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea4
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea4
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea4
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea4
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea4
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~That's not quite what I was expecting, but I can see how it may surprise Leina.~
  IF ~True()~ THEN EXTERN VPLEIB TheaQ151
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea1
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea1
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea1
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea1
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea1
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea1
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea1
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea1
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea1
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~Leina, child, whereas I am flattered, I go where Torm bids me go and as such, his is the only recognition I seek. Sing of the others as heroes if you must but please, leave my name to me.~
  IF ~True()~ THEN EXTERN VPLEIB TheaQ161
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea2
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea2
END

END