REPLACE_ACTION_TEXT ~BAERIE~ ~SetGlobal("BAerie4","LOCALS",0)~ ~SetGlobal("BAerie4","LOCALS",1)~
//state #25

REPLACE_STATE_TRIGGER BAERIE 44
~InParty("Jan")
See("Jan")
!Dead("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("VP_BanterFix1","LOCALS",0)~

ALTER_TRANS BAERIE // file name
BEGIN 44 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_BanterFix1","LOCALS",1)~
END

REPLACE_STATE_TRIGGER BAERIE 76
~InParty("Minsc")
See("Minsc")
!Dead("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
AreaType(FOREST)
Global("VP_BanterFix2","LOCALS",0)~

ALTER_TRANS BAERIE // file name
BEGIN 76 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_BanterFix2","LOCALS",1)~
END

APPEND ~BAERIE~

IF ~~ THEN BEGIN TS449
  SAY ~Yes... yes. Sorry. I did not mean to disturb anyone. I was just thinking of my people...~
  IF ~~ THEN EXTERN ~BKACHI~ 46
END

IF ~~ THEN BEGIN TS450
  SAY ~My native lands... my native element is the sky. I miss it too. I can see it from here, from the hard ground and I yearn to be embraced by soft warm air. Kachiko, if you only knew how wonderful it is to be able to fly...~
  IF ~~ THEN EXTERN ~BKACHI~ 47
END

IF ~~ THEN BEGIN TS451
  SAY ~I never thought that anyone could be envious of my fate...~
  IF ~~ THEN EXTERN ~BKACHI~ 48
END

IF ~~ THEN BEGIN TS452
  SAY ~Me... strong? Kachiko, nobody ever called me strong before... In fact, they usually call me a freak... I shall think about what you said.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS453
  SAY ~(*sighs*)~
  IF ~~ THEN EXTERN ~BVALYGA~ TS508
END

IF ~~ THEN BEGIN TS454
  SAY ~I was just thinking of my parents and how I used to fly with them as a little girl. Oh Valygar, you must know what its like to be ripped away from a life you loved.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS509
END

IF ~~ THEN BEGIN TS455
  SAY ~I'm sorry Valygar I didn't mean to awaken painful memories for you.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS510
END

IF ~~ THEN BEGIN TS456
  SAY ~I... I do not know... It is all so sad... I feel so... lonely.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS512
END

IF ~~ THEN BEGIN TS457
  SAY ~I miss Uncle Quayle.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS513
END

IF ~~ THEN BEGIN TS458
  SAY ~I... do not want to go back. I do not... I do not miss the circus. That was a cruel place where... everyone was ready to do... just about anything for a round of applause. I miss... my Uncle. I wish... I wish I could meet someone as kind and... caring as him... during our travels. Someone who'd care for me... like you care for <CHARNAME>.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS514
END

IF ~~ THEN BEGIN TS459
  SAY ~(*blush*) I did not... mean you... I must have put it the wrong way, as usual. I... know that you and <CHARNAME>... Well, I do not... know... I just thought that... Oh, that's so embarrassing! I am so clumsy...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS515
END

IF ~~ THEN BEGIN TS460
  SAY ~My face is not... not sour!~
  IF ~~ THEN EXTERN ~BSIME~ 5
END

IF ~~ THEN BEGIN TS461
  SAY ~You mean... you mean I look... ugly?~
  IF ~~ THEN EXTERN ~BSIME~ 6
END

IF ~~ THEN BEGIN TS462
  SAY ~What's wrong with my... my face?~
  IF ~~ THEN EXTERN ~BSIME~ 7
END

IF ~~ THEN BEGIN TS463
  SAY ~Oh...*sniffs*~
  IF ~~ THEN EXTERN ~BSIME~ 8
END

IF ~~ THEN BEGIN TS464
  SAY ~I... I... was trying not to fall down...~
  IF ~~ THEN EXTERN ~BSIME~ 10
END

IF ~~ THEN BEGIN TS465
  SAY ~For me... for me it is, Sime. Avariel are not accustomed to prolonged walks like this. Avariel fly...~
  IF ~~ THEN EXTERN ~BSIME~ 11
END

IF ~~ THEN BEGIN TS466
  SAY ~In a cage... where I could not lay down, let alone walk. I... I have never walked this much in my whole life.~
  IF ~~ THEN EXTERN ~BSIME~ 12
END

IF ~~ THEN BEGIN TS467
  SAY ~I... I know... Do not... do not tell anyone, please?~
  IF ~~ THEN EXTERN ~BSIME~ 13
END

IF ~~ THEN BEGIN TS468
  SAY ~They'd laugh... They always laugh...~
  IF ~~ THEN EXTERN ~BSIME~ 14
END

IF ~~ THEN BEGIN TS469
  SAY ~Thank you, Sime. Now if only someone could clean this place up... It is so... dirty and dusty!~
  IF ~~ THEN EXTERN ~BSIME~ 15
END

IF ~~ THEN BEGIN TS470
  SAY ~You... do not need to check me. I... do what I want.~
  IF ~~ THEN EXTERN ~BSIME~ 563
END

IF ~~ THEN BEGIN TS471
  SAY ~It is empty.~
  IF ~~ THEN EXTERN ~BSIME~ 564
END

IF ~~ THEN BEGIN TS472
  SAY ~Here, catch it if you can... (*She throws the vial to Sime and tries to run away, crying).~
  IF ~~ THEN EXTERN ~BSIME~ 565
END

IF ~~ THEN BEGIN TS473
  SAY ~I... do not need talking to, Sime. I have enough of that from <CHARNAME>.~
  IF ~~ THEN EXTERN ~BSIME~ 572
END

IF ~~ THEN BEGIN TS474
  SAY ~Help me? You... want to help me? How can you help me? Can you make <CHARNAME> to love me?~
  IF ~~ THEN EXTERN ~BSIME~ 573
END

IF ~~ THEN BEGIN TS475
  SAY ~You do not... understand.~
  IF ~~ THEN EXTERN ~BSIME~ 574
END

IF ~~ THEN BEGIN TS476
  SAY ~You... are wrong. I will never... love anyone, but <CHARNAME>!~
  IF ~~ THEN EXTERN ~BSIME~ 575
END

IF ~~ THEN BEGIN NEJ449
  SAY ~(*Giggles*) What a funny thing to think Leina. No, it is no ritual. I like to stand and feel the wind beneath my arms and imagine it is lifting me into the air as though they were my wings. You see Leina, the only way I will ever fly again is in my dreams.~
  IF ~~ THEN EXTERN ~BLEINA~ 197
END

IF ~~ THEN BEGIN NEJ450
  SAY ~To soar to the clouds, to feel the wind beneath you as you leave the ground is an experience that cannot be described, it has to be felt. I try to capture the memories, the feelings again and again but each time it becomes a little harder. I fear I am slowly losing that which I am.~
  IF ~~ THEN EXTERN ~BLEINA~ 198
END

IF ~~ THEN BEGIN NEJ451
  SAY ~But I don’t want to lose any of it! I am Avariel with or without my wings and to be Avariel is to know and to feel the freedom that which comes from soaring with the eagles and walking on the clouds. If I lose that what do I become and where do I belong?~
  IF ~~ THEN EXTERN ~BLEINA~ 199
END

IF ~~ THEN BEGIN NEJ452
  SAY ~If I could walk on grass it would not be so bad but we tramp more often than not the hard rough road which hurt my feet, and as for the rain, it is always so cold and wet. I hate the way the coldness of it seeps through to my skin!~
  IF ~~ THEN GOTO NEJ453
END

IF ~~ THEN BEGIN NEJ453
  SAY ~(*Tears well in her eyes as she speaks*) I am Avariel, I was born to fly, to be one with the wind, not to trudge through mud!~
  IF ~~ THEN EXTERN ~BLEINA~ 201
END

IF ~~ THEN BEGIN NEJ454
  SAY ~I... I will just watch Leina. My legs really hurt from all the walking we have done today.~
  IF ~~ THEN EXTERN ~BLEINA~ PCF2Leina26a
END

IF ~~ THEN BEGIN NEJ455
  SAY ~I’ll get used to walking first before I try dancing thank you Leina.~
	IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~BLEINA~ PCF2Leina2a
  IF ~Gender(Player1,MALE)~ THEN EXTERN ~BLEINA~ PCM4Leina2b
	IF ~InParty("Yoshimo")~ THEN EXTERN ~BYOSHIM~ NEJ9
	IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN ~BJAHEIR~ NEJ497
	IF ~InParty("Nalia")
Gender(Player1,FEMALE)~ THEN EXTERN ~BNALIA~ NEJ58
	IF ~InParty("Nalia")
Gender(Player1,MALE)~ THEN EXTERN ~BNALIA~ NEJ60
	IF ~InParty("Mazzy")~ THEN EXTERN ~BMAZZY~ NEJ1
	IF ~InParty("Anomen")~ THEN EXTERN ~BANOMEN~ NEJ1
	IF ~InParty("Keldorn")~ THEN EXTERN ~BKELDOR~ NEJ1
	IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_VickyNoDancing","LOCALS",1)~ EXTERN ~BVICONI~ NEJ0
	IF ~InParty("Korgan")~ THEN DO ~SetGlobal("VP_KorganNoDancing","LOCALS",1)~ EXTERN ~BKORGAN~ NEJ0
	IF ~InParty("Valygar")~ THEN EXTERN ~BVALYGA~ NEJ156
	IF ~InParty("Edwin")~ THEN EXTERN ~BEDWIN~ NEJ109
	IF ~InParty("Jan")~ THEN EXTERN ~BJAN~ NEJ1
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~That look, are you... are you sure it’s a good idea?~
 IF ~!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiTheat
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiTheat
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiTheat	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiTheat
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiTheat
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiTheat
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiTheat
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiTheat
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiTheat
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiTheat
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiTheat
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiTheat
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiTheat
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiTheat
	IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiTheat
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiTheat
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~Leina... You are talking about Leina, aren’t you?~
 IF ~!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea3
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea3
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea3	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea3
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea3
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea3
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiThea3
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea3
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea3
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea3
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea3
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiThea3
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea3
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea3
	IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiThea3
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea3
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~I don’t know... I like Leina and some of your jokes are really bad.~
 IF ~!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea4
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea4
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea4	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea4
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea4
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea4
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiThea4
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea4
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea4
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea4
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea4
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiThea4
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea4
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea4
	IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiThea4
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea4
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~Oh, we shall be first this time and on her own territory. What will she say!~
	IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ151
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea1
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea1
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea1	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea1
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea1
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea1
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiThea1
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea1
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea1
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea1
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea1
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiThea1
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea1
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea1
	IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiThea1
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea1
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~Oh, you have made a song about me! I never dreamt of such a thing, it is so much more exciting than the circus.~
	IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ161
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea2
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea2
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea2
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea2
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea2
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiThea2
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea2
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea2
END
END