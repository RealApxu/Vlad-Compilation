APPEND ~BEDWIN~

IF ~~ THEN BEGIN NEJ106
  SAY ~What is a bit of mud on the hem of a robe? A small price to pay for the honour of protecting such an exquisite flower. (*Besides, I am not about to let any of these imbeciles pluck the petals from this elven beauty.*)~
  IF ~~ THEN EXTERN ~BLEINA~ 217
END

IF ~~ THEN BEGIN NEJ107
  SAY ~But if you are to inspire us with your fiery renditions, then it is for me to watch that no stray arrows or spells should find their way towards you before the fire is fully aflame.~
  IF ~~ THEN EXTERN ~BLEINA~ 218
END

IF ~~ THEN BEGIN NEJ108
  SAY ~Ah, but it is necessary for my piece of mind, so you will not dissuade me from remaining close beside you my elven flower... (*and for the gratitude she will feel she owes me if I do manage to save the arrogant elf's life.*)~
  IF ~~ THEN EXTERN ~BLEINA~ 219
END

IF ~~ THEN BEGIN NEJ109
  SAY ~(*To himself*) Yet more displays of the buffoonery of these imbeciles. Still, female are always impressed by a man who looks good on the dance floor. Maybe this one will be impressed enough...~
  IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~BLEINA~ PCF2Leina28a
  IF ~Gender(Player1,MALE)~ THEN EXTERN ~BLEINA~ PCM4Leina28a
END

IF ~~ THEN BEGIN LeiSpher1
  SAY ~It is about time you got rid of the nitwit bard. [I shudder to think of her casting spells.]~
  IF ~OR(2) !InParty("Viconia") Dead("Viconia")~ THEN EXTERN ~BLEINA~ Sphere13a
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiSpher2
END

IF ~~ THEN BEGIN LeiSpher2
  SAY ~[Oh how did I every join this group there isn't half a brain here even if you combine them all.]~
  IF ~True()~ THEN EXTERN ~BLEINA~ Sphere18
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher1
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher1
END

IF ~~ THEN BEGIN LeiSpher3
  SAY ~[Now this imbecile wants something small like a peanut.]~
  IF ~True()~ THEN EXTERN ~BLEINA~ Sphere19
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher2
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher2
END

IF ~~ THEN BEGIN LeiSpher4
  SAY ~A coffin. [Just where you should be... inside it and six foot under.]~
  IF ~True()~ THEN EXTERN ~BLEINA~ Sphere20
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher3
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher3
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~Some of your ideas are not that good. (An idea... this simian actually thinks it has a brain!)~
  IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiTheat
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~Will you be more specific and not beat around the bush! (If any having is to be done, it will certainly not be by this rabble!)~
  IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiThea3
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~(*His voice barely audible*) Ha, if anyone is getting the girl it certainly won't be any of this rabble!~
  IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiThea4
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~I don't believe it. How did I become party to such infantile behaviour?~
  IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ151
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
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiThea1
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~Bah, you empty-headed girl. Edwin needs no such praise, you insolent woman. Sing of me and I'll scorch the tongue out of your mouth.~
  IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ161
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea2
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea2
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea2
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea2
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea2
END

IF ~~ THEN BEGIN RadianQ
  SAY ~Look at the kettle calling the pot black, neither of you have a brain cell between you!~
  IF ~True()~ THEN EXTERN ~BLEINA~ RadiQ19A
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ RadianQ
END

IF ~~ THEN BEGIN LeiRadia
  SAY ~(Hmm... I wonder if the time is right to suggest we save water by sharing a tub. Always nice to have someone on hand to wash those hard to reach places.)~
  IF ~~ THEN EXTERN ~BLEINA~ LeiRadE1
END

IF ~~ THEN BEGIN LeiRadi2
  SAY ~(Elf... She calls herself ELF! Nerve of the girl she is but a half breed and nothing more! Still, I'm not one to hold that against a pretty face when it comes to warming my bed.)~
  IF ~True()~ THEN EXTERN ~BLEINA~ RadiQ21B
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiRadia
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~BTAFFIC~ LeiRadia
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiRadia
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiRadia
END

END