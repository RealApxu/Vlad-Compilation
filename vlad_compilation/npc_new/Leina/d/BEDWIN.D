CHAIN BEDWIN NEJ106
~What is a bit of mud on the hem of a robe? A small price to pay for the honour of protecting such an exquisite flower. (*Besides, I am not about to let any of these imbeciles pluck the petals from this elven beauty.*)~
EXTERN VPLEIB 217

CHAIN BEDWIN NEJ107
~But if you are to inspire us with your fiery renditions, then it is for me to watch that no stray arrows or spells should find their way towards you before the fire is fully aflame.~
EXTERN VPLEIB 218

CHAIN BEDWIN NEJ108
~Ah, but it is necessary for my piece of mind, so you will not dissuade me from remaining close beside you my elven flower... (*and for the gratitude she will feel she owes me if I do manage to save the arrogant elf's life.*)~
EXTERN VPLEIB 219

CHAIN BEDWIN NEJ109
~(*To himself*) Yet more displays of the buffoonery of these imbeciles. Still, female are always impressed by a man who looks good on the dance floor. Maybe this one will be impressed enough...~
END
 IF ~Gender(Player1,FEMALE)~ THEN EXTERN VPLEIB PCF2Leina28a
 IF ~Gender(Player1,MALE)~ THEN EXTERN VPLEIB PCM4Leina28a

CHAIN BEDWIN LeiSpher1
~It is about time you got rid of the nitwit bard. [I shudder to think of her casting spells.]~
END
 IF ~OR(2) !InParty("Viconia") Dead("Viconia")~ THEN EXTERN VPLEIB Sphere13a
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiSpher2

CHAIN BEDWIN LeiSpher2
~[Oh how did I every join this group there isn't half a brain here even if you combine them all.]~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere18
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher1
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher1

CHAIN BEDWIN LeiSpher3
~[Now this imbecile wants something small like a peanut.]~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere19
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher2
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher2

CHAIN BEDWIN LeiSpher4
~A coffin. [Just where you should be... inside it and six foot under.]~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere20
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher3
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher3

CHAIN BEDWIN LeiTheat
~Some of your ideas are not that good. (An idea... this simian actually thinks it has a brain!)~
END
 IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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

CHAIN BEDWIN LeiThea3
~Will you be more specific and not beat around the bush! (If any having is to be done, it will certainly not be by this rabble!)~
END
 IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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

CHAIN BEDWIN LeiThea4
~(*His voice barely audible*) Ha, if anyone is getting the girl it certainly won't be any of this rabble!~
END
 IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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

CHAIN BEDWIN LeiThea1
~I don't believe it. How did I become party to such infantile behaviour?~
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
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiThea1
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea1
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiThea1

CHAIN BEDWIN LeiThea2
~Bah, you empty-headed girl. Edwin needs no such praise, you insolent woman. Sing of me and I'll scorch the tongue out of your mouth.~
END
 IF ~True()~ THEN EXTERN VPLEIB TheaQ161
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea2
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea2
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea2
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea2
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea2

CHAIN BEDWIN RadianQ
~Look at the kettle calling the pot black, neither of you have a brain cell between you!~
END
 IF ~True()~ THEN EXTERN VPLEIB RadiQ19A
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI RadianQ

CHAIN BEDWIN LeiRadia
~(Hmm... I wonder if the time is right to suggest we save water by sharing a tub. Always nice to have someone on hand to wash those hard to reach places.)~
EXTERN VPLEIB LeiRadE1

CHAIN BEDWIN LeiRadi2
~(Elf... She calls herself ELF! Nerve of the girl she is but a half breed and nothing more! Still, I'm not one to hold that against a pretty face when it comes to warming my bed.)~
END
 IF ~True()~ THEN EXTERN VPLEIB RadiQ21B
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiRadia
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiRadia
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiRadia
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiRadia