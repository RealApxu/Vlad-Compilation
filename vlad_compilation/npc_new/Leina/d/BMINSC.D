APPEND BMINSC

IF ~~ THEN BEGIN NEJ131
  SAY ~Minsc is sorry Leina, but such beautiful music comes from the plucking of the strings, Minsc thought that if he could just touch the strings they would sing for him.~
  IF ~~ THEN EXTERN VPLEIB 191
END

IF ~~ THEN BEGIN NEJ132
  SAY ~Could Minsc learn the way to unjumble the notes? Would Leina teach him?~
  IF ~~ THEN EXTERN VPLEIB 192
END

IF ~~ THEN BEGIN NEJ133
  SAY ~Yes Minsc's boot is good for kicking evil when he meets evil, but when there is no evil to kick he would like to make everyone happy with music, like Leina.~
  IF ~~ THEN EXTERN VPLEIB 193
END

IF ~~ THEN BEGIN NEJ134
  SAY ~The only thing Minsc feels like that is his berserker rage when evil shows its evil head. Then there is a big bursting from inside Minsc and a big butt kicking for evil!~
  IF ~~ THEN EXTERN VPLEIB 194
END

IF ~~ THEN BEGIN NEJ135
  SAY ~So, if Minsc stays a ranger Leina, and not tries to be a bard, he will be a wise Minsc? Ooooh, do you hear that Boo, Minsc the wise ranger! Come Boo we must find out what being wise will mean for Minsc.~
  IF ~~ THEN EXTERN VPLEIB 195
END

IF ~~ THEN BEGIN NEJ136
  SAY ~Great fun, right Boo? All the whirling and twirling poor Minsc's eyes were going round in circles trying to watch Leina. Even Boo says Leina was faster than a hamster whirling in his wheel.~
  IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN NEJ137
  SAY ~Boo says Minsc's boots are big and for butt kicking evil, not dancing boots. Boo is very wise so Minsc will do as he says, drink the ale, but not dancing.~
  IF ~~ THEN EXTERN VPLEIB PCF2Leina23c
END

IF ~~ THEN BEGIN NEJ138
  SAY ~Oooo... that's not right Leina, Minsc has not got his dancing socks on either, only the ones that let his toes breathe.~
  IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
  IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
  IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
  IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58
  IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
  IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
  IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
  IF ~InParty("Viconia")~ THEN EXTERN BVICONI NEJ0
  IF ~InParty("Korgan")~ THEN EXTERN BKORGAN NEJ0
  IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156
  IF ~InParty("Edwin")~ THEN EXTERN BEDWIN NEJ109
  IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ1
  IF ~InParty("Aerie")~ THEN EXTERN BAERIE NEJ454
  IF ~InParty("njdar")~ THEN EXTERN NJDARB 127
  IF ~InParty("njhroth")~ THEN EXTERN NJHROB 85
END

IF ~~ THEN BEGIN NEJ139
  SAY ~Ooooo... so much in and out of tables and swayings like the trees in the wind, Minsc's poor head is dizzy from the watching and the drinking. Boo is right, Minsc's boots are made for butt kicking and not dancing, they would be taking Minsc under the tables and not around the tables.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Danicng_Queen","GLOBAL",2)~ EXIT
  IF ~InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 56
  IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
  IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0
  IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ0
  IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ57
  IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ0
  IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ0
  IF ~InParty("njdar")~ THEN EXTERN NJDARB 126
  IF ~InParty("njhroth")~ THEN EXTERN NJHROB 84
END

IF ~~ THEN BEGIN NEJ140
  SAY ~Boo says cover your noses, our boots are smelly through butt kicking so much stinking evil.~
  IF ~~ THEN EXTERN VPLEIB ClericQuest2
END

IF ~~ THEN BEGIN NEJ141
  SAY ~(*His voice loud and stern*) Boo says a bit of quiet please, this is not a place to be shouting!~
  IF ~True()~ THEN EXTERN VPLEIB ClericQuest17
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB 8
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB 130
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB 59
END

IF ~~ THEN BEGIN NEJ142
  SAY ~Boo says he is a hamster and not a rat best we clean up.~
  IF ~True()~ THEN EXTERN VPLEIB ClericQuest21
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB 88
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY NEJ2
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR NEJ500
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN NEJ1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB 9
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB 60
END

IF ~~ THEN BEGIN LeiDear1
  SAY ~Oh, Boo says Minsc shouldn't talk of home, but you are nice so we will. Rasheman is not a green fluffy place. It's climate is harsh and breeds fierce warriors like Minsc, true heros.~
  IF ~~ THEN GOTO LeiDear1a
END

IF ~~ THEN BEGIN LeiDear1a
  SAY ~We do not have such squishy things and music is not like that of Leinas. It is made to bring terror into hearts of evil before hero's deliver swift kicks to evil's black butts!~
  IF ~~ THEN EXTERN VPLEIB DeArnise23
END

IF ~~ THEN BEGIN LeiDear2
  SAY ~(*The ranger's face lights up*) Oh, Minsc know how to make merry he sings of butt kicking, bring terror to nasty evil nose. Yes?~
  IF ~~ THEN EXTERN VPLEIB DeArnise24
END

IF ~~ THEN BEGIN LeiDear3
  SAY ~Oh, you make Boo laugh. Boo says <CHARNAME> singing is stronger then any spell of terror. It make all evil quake. <PRO_HESHE> make good Rasheman warrior.~ [BOONEJ1]
  IF ~~ THEN EXTERN VPLEIB DeArnise25
END

IF ~~ THEN BEGIN LeiDear4
  SAY ~Leina, Minsc no make fun of <CHARNAME>, <PRO_HISHER> war cry is amongst the best of those feared in Rasheman... if not the best cause it has that little notie thing in it.~
  IF ~~ THEN EXTERN VPLEIB DeArnise25a
END

IF ~~ THEN BEGIN LeiSpher1
  SAY ~Oh, Boo we now play guessing game with Leina but Minsc knows not what to guess.~
  IF ~True()~ THEN EXTERN VPLEIB Sphere18
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher1
END

IF ~~ THEN BEGIN LeiSpher2
  SAY ~Oh, Boo is small... how about Boo?~
  IF ~True()~ THEN EXTERN VPLEIB Sphere19
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher2
END

IF ~~ THEN BEGIN LeiSpher3
  SAY ~This game is causing a big pain in Minsc's head... it has too much thinking. He will not play anymore.~
  IF ~True()~ THEN EXTERN VPLEIB Sphere20
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher3
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~I like Leina's idea... after so much righteous butt kicking, it is time for hamsters rangers and heroes to rejoice.~
  IF ~!IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~(*Scratching his head*) Have who and for what?~
  IF ~!IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~Minsc will have to confer with Boo. He likes the lady Leina and must know more of what "getting" means.~
  IF ~!IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~(*A grin spreading across the big man's face*) Ah, now Minsc understands. Leina will find this funny, yes?~
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
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~Oooo... Boo hear that. Our deeds will be sung before all. We are heros. We kick butt now.~
  IF ~True()~ THEN EXTERN VPLEIB TheaQ161
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea2
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea2
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea2
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea2
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea2
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiThea2
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea2
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea2
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiThea2
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea2
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea2
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea2
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea2
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea2
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea2
END

IF ~~ THEN BEGIN LeiRadia
  SAY ~Boo says he will gladly join in the drinking of the ale but he must decline the bath. He says too many baths and he won't be able to do a thing with his fur.~
  IF ~True()~ THEN EXTERN VPLEIB RadiQ21B
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiRadia
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiRadia
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiRadia
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiRadi2
END

IF ~~ THEN BEGIN LeiRadi2
  SAY ~Ooo, do you hear that Boo, you always say how beautiful Imoen's hair is and now you are going to have shiny untangled fur just like Imoen's. Squeak from Boo here.~  [BOONEJ1]
  IF ~True()~ THEN EXTERN VPLEIB RadiQ21B
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiRadia
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiRadia
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiRadia
END

END