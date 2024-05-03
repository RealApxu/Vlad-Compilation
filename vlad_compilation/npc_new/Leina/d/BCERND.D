CHAIN BCERND LeiTheat
~I am almost afraid to ask what you have in mind, but as long as no harm is done to another, I will hear you out.~
END
 IF ~!IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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

CHAIN BCERND LeiThea3
~Am I missing something here? (*Have her this time*)... Who do we have?~
END
 IF ~!IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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

CHAIN BCERND LeiThea4
~You lead, I will decide to follow, or not, when it is clearer what it is you have in mind <CHARNAME>.~
END
 IF ~!IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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

CHAIN BCERND LeiThea1
~Of course, but I wonder, does the cat truly have the drop on the mouse, or does the mouse play with the cat here?~
END
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