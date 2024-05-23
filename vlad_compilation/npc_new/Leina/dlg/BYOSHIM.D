APPEND BYOSHIM

IF ~~ THEN BEGIN LeiSpher1
  SAY ~Yoshimo has not seen any such thing.~
  IF ~True()~ THEN EXTERN VPLEIB Sphere18
  IF ~InParty("vpkachi") !Dead("vpkachi")~ THEN EXTERN VPKACB LeiSpher1
END

IF ~~ THEN BEGIN LeiSpher2
  SAY ~Big, small can she not make up her mind?~
  IF ~True()~ THEN EXTERN VPLEIB Sphere19
  IF ~InParty("vpkachi") !Dead("vpkachi")~ THEN EXTERN VPKACB LeiSpher2
END

IF ~~ THEN BEGIN LeiSpher3
  SAY ~A sack... would that suffice as an answer my friend?~
  IF ~True()~ THEN EXTERN VPLEIB Sphere20
  IF ~InParty("vpkachi") !Dead("vpkachi")~ THEN EXTERN VPKACB LeiSpher3
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~You have an idea for what?~
  IF ~!IsValidForPartyDialogue("vpkachi") !IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("vpkachi") !IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("vpkachi") !IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiTheat
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiTheat
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiTheat
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiTheat
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiTheat
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiTheat
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiTheat
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiTheat
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiTheat
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiTheat
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiTheat
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiTheat
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiTheat
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiTheat
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiTheat
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiTheat
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiTheat
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiTheat
  IF ~InParty("vpkachi") !Dead("vpkachi")~ THEN EXTERN VPKACB LeiTheaC
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~Yoshimo does not understand your cryptic words... who is being had?~
  IF ~!IsValidForPartyDialogue("vpkachi") !IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("vpkachi") !IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("vpkachi") !IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea3
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea3
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea3
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea3
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea3
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea3
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea3
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea3
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea3
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea3
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea3
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea3
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea3
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea3
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiThea3
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea3
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiThea3
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiThea3
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiThea3
  IF ~InParty("vpkachi") !Dead("vpkachi")~ THEN EXTERN VPKACB LeiTheaC
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~(*Sternly*) Yoshimo has the greatest respect for Leina, he will be watching that you do not upset her <CHARNAME>!~
  IF ~!IsValidForPartyDialogue("vpkachi") !IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("vpkachi") !IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("vpkachi") !IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea4
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea4
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea4
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea4
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea4
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea4
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea4
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea4
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea4
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea4
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea4
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea4
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea4
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea4
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiThea4
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea4
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiThea4
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiThea4
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiThea4
  IF ~InParty("vpkachi") !Dead("vpkachi")~ THEN EXTERN VPKACB LeiTheaD
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~Ah, a harmless jest I see... nothing more.~
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
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea1
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea1
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea1
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea1
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea1
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiThea1
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea1
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiThea1
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiThea1
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiThea1
  IF ~InParty("vpkachi") !Dead("vpkachi")~ THEN EXTERN VPKACB LeiThea1
END

END