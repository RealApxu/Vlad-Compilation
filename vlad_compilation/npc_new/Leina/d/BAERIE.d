CHAIN BAERIE NEJ449
~(*Giggles*) What a funny thing to think Leina. No, it is no ritual. I like to stand and feel the wind beneath my arms and imagine it is lifting me into the air as though they were my wings. You see Leina, the only way I will ever fly again is in my dreams.~
EXTERN VPLEIB 197

CHAIN BAERIE NEJ450
~To soar to the clouds, to feel the wind beneath you as you leave the ground is an experience that cannot be described, it has to be felt. I try to capture the memories, the feelings again and again but each time it becomes a little harder. I fear I am slowly losing that which I am.~
EXTERN VPLEIB 198

CHAIN BAERIE NEJ451
~But I don�t want to lose any of it! I am Avariel with or without my wings and to be Avariel is to know and to feel the freedom that which comes from soaring with the eagles and walking on the clouds. If I lose that what do I become and where do I belong?~
EXTERN VPLEIB 199

CHAIN BAERIE NEJ452
~If I could walk on grass it would not be so bad but we tramp more often than not the hard rough road which hurt my feet, and as for the rain, it is always so cold and wet. I hate the way the coldness of it seeps through to my skin!~
EXTERN BAERIE NEJ453

CHAIN BAERIE NEJ453
~(*Tears well in her eyes as she speaks*) I am Avariel, I was born to fly, to be one with the wind, not to trudge through mud!~
EXTERN VPLEIB 201

CHAIN BAERIE NEJ454
~I... I will just watch Leina. My legs really hurt from all the walking we have done today.~
EXTERN VPLEIB PCF2Leina26a

CHAIN BAERIE NEJ455
~I�ll get used to walking first before I try dancing thank you Leina.~
 IF ~Gender(Player1,FEMALE)~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~Gender(Player1,MALE)~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN ~BYOSHIM~ NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN ~BJAHEIR~ NEJ497
 IF ~InParty("Nalia") Gender(Player1,FEMALE)~ THEN EXTERN ~BNALIA~ NEJ58
 IF ~InParty("Nalia") Gender(Player1,MALE)~ THEN EXTERN ~BNALIA~ NEJ60
 IF ~InParty("Mazzy")~ THEN EXTERN ~BMAZZY~ NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN ~BANOMEN~ NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN ~BKELDOR~ NEJ1
 IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_VickyNoDancing","LOCALS",1)~ EXTERN ~BVICONI~ NEJ0
 IF ~InParty("Korgan")~ THEN DO ~SetGlobal("VP_KorganNoDancing","LOCALS",1)~ EXTERN ~BKORGAN~ NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN ~BVALYGA~ NEJ156
 IF ~InParty("Edwin")~ THEN EXTERN ~BEDWIN~ NEJ109
 IF ~InParty("Jan")~ THEN EXTERN ~BJAN~ NEJ1

CHAIN BAERIE LeiTheat
~That look, are you... are you sure it�s a good idea?~
 IF ~!IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~BTAFFIC~ LeiTheat
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN ~BDAR~ LeiTheat
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN ~BHROTH~ LeiTheat
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiTheat
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiTheat
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiTheat
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiTheat
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiTheat
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiTheat
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~BJAN~ LeiTheat
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiTheat
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiTheat
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiTheat
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiTheat
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiTheat

CHAIN BAERIE LeiThea3
~Leina... You are talking about Leina, aren�t you?~
 IF ~!IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~BTAFFIC~ LeiThea3
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea3
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN ~BDAR~ LeiThea3
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN ~BHROTH~ LeiThea3
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea3
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea3
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiThea3
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea3
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea3
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea3
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea3
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiThea3
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea3
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea3
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiThea3
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea3

CHAIN BAERIE LeiThea4
~I don�t know... I like Leina and some of your jokes are really bad.~
 IF ~!IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~BTAFFIC~ LeiThea4
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea4
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN ~BDAR~ LeiThea4
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN ~BHROTH~ LeiThea4
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea4
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea4
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiThea4
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea4
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea4
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea4
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea4
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiThea4
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea4
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea4
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiThea4
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea4

CHAIN BAERIE LeiThea1
~Oh, we shall be first this time and on her own territory. What will she say!~
 IF ~True()~ THEN EXTERN VPLEIB TheaQ151
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~BTAFFIC~ LeiThea1
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea1
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN ~BDAR~ LeiThea1
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN ~BHROTH~ LeiThea1
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea1
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea1
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiThea1
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea1
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea1
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea1
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea1
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiThea1
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea1
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea1
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiThea1
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea1


CHAIN BAERIE LeiThea2
~Oh, you have made a song about me! I never dreamt of such a thing, it is so much more exciting than the circus.~
 IF ~True()~ THEN EXTERN VPLEIB TheaQ161
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea2
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea2
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea2
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea2
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea2
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiThea2
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea2
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea2