APPEND ~BNALIA~

IF ~~ THEN BEGIN NEJ51
  SAY ~It's this blasted shoe of mine! Look at it, a hole right through the sole and a stone has gotten inside.~
  IF ~~ THEN EXTERN ~BLEINA~ 211
END

IF ~~ THEN BEGIN NEJ52
  SAY ~Ouch, that hurt. I was not expecting to be on the road, those damn trolls never gave me the chance to change my shoes or anything else for that matter. Damn them and whoever told them the De'Arnise keep was worth plundering! I hope their murderous carcases rot in the Abyss!~
  IF ~~ THEN EXTERN ~BLEINA~ 212
END

IF ~~ THEN BEGIN NEJ53
  SAY ~Ouch, that hurt. I guess I wasn't thinking clear enough after my father's death to consider that I wasn't suitable attired for hard travelling. Damn those trolls and whoever told them the De'Arnise keep was worth plundering! I hope their murderous carcases rot in the Abyss!~
  IF ~~ THEN EXTERN ~BLEINA~ 212
END

IF ~~ THEN BEGIN NEJ54
  SAY ~(*Putting her shoe back on*)... Thanks Leina, I guess it's true what they say about bards knowing a little of everything, even a bruised foot. Auntie would have a fit if she saw the state these shoes are in, *not fit to be seen on the feet of even the peasants* she would say.~
  IF ~~ THEN GOTO NEJ55
END

IF ~~ THEN BEGIN NEJ55
  SAY ~(*Giggling*) Come to think of it she would probably have an apoplexy if she saw the state of the rest of me!~
  IF ~~ THEN EXTERN ~BLEINA~ 213
END

IF ~~ THEN BEGIN NEJ56
  SAY ~I have to admit I feel good too, being on the road, doing good things and helping others. It's what I've always dreamed of doing. Only Auntie would never let me on account of her blaming my mother's death on her having been contaminated by the peasants.~
  IF ~~ THEN EXTERN ~BLEINA~ 214
END

IF ~~ THEN BEGIN NEJ57
  SAY ~I believe father and auntie would have been in agreement for once about that not being an appropriate way for a young lady to dance... but it was so much  fun!~
  IF ~Gender(Player1,FEMALE) !InParty("Melora")~ THEN EXTERN ~BLEINA~ PCF2Leina38a
  IF ~Gender(Player1,MALE) !InParty("Melora")~ THEN DO ~SetGlobal("VP_Danicng_Queen","GLOBAL",2)~ EXIT
  IF ~Gender(Player1,FEMALE) InParty("Melora") InParty("Taffic")~ THEN EXTERN ~BMELORA~ 53
  IF ~Gender(Player1,MALE) InParty("Melora") InParty("Taffic")~ THEN EXTERN ~BMELORA~ 56
  IF ~InParty("Jan")~ THEN EXTERN ~BJAN~ NEJ0
  IF ~InParty("Kachiko")~ THEN EXTERN ~BKACHI~ NEJ0
  IF ~InParty("Mazzy")~ THEN EXTERN ~BMAZZY~ NEJ0
END

IF ~~ THEN BEGIN NEJ58
  SAY ~I can only guess what Auntie would say if she knew I was dancing under the stars and around a camp fire like a vagabond.~
  IF ~~ THEN EXTERN ~BLEINA~ PCF2Leina37a
END

IF ~~ THEN BEGIN NEJ59
  SAY ~(*She giggles*) Auntie, and escapades! No, she's always been just auntie.~
  IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~BLEINA~ PCF2Leina2a
  IF ~Gender(Player1,MALE)~ THEN EXTERN ~BLEINA~ PCM4Leina2b
  IF ~InParty("Yoshimo")~ THEN EXTERN ~BYOSHIM~ NEJ9
  IF ~InParty("Jaheira")~ THEN EXTERN ~BJAHEIR~ NEJ497
END

IF ~~ THEN BEGIN NEJ60
  SAY ~I can only guess what Auntie would say if she knew I was dancing like a vagabond in a tavern.~
  IF ~~ THEN EXTERN ~BLEINA~ PCF2Leina37a
END

IF ~~ THEN BEGIN LeiSpher1
  SAY ~Oh, I'd love to help... how about a Keep?~
  IF ~True()~ THEN EXTERN ~BLEINA~ Sphere18
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher1
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher1
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher2
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiSpher1
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiSpher4
END

IF ~~ THEN BEGIN LeiSpher2
  SAY ~A locket... it's quite small when closed?~
  IF ~True()~ THEN EXTERN ~BLEINA~ Sphere19
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher2
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher2
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher3
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiSpher2
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiSpher5
END

IF ~~ THEN BEGIN LeiSpher3
  SAY ~(*A look of revulsion on her face*) There... there used to be a cage of sorts, big enough to hold a person in the... the basement of the keep but I can't see anyone volunteering to get inside it.~
  IF ~True()~ THEN EXTERN ~BLEINA~ Sphere20
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher3
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher3
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher4
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiSpher3
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiSpher6
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~Anything I can do to help, you know you only need to ask?~
  IF ~!IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("Hrothgar") !IsValidForPartyDialogue("Dar") !IsValidForPartyDialogue("Melora") !IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("Hrothgar") !IsValidForPartyDialogue("Dar") !IsValidForPartyDialogue("Melora") !IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("Hrothgar") !IsValidForPartyDialogue("Dar") !IsValidForPartyDialogue("Melora") !IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiTheat
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiTheat
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~BDAR~ LeiTheat
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiTheat
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiTheat
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiTheat
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~(*Puzzled*) "This time"... What do you mean, this time, <CHARNAME>?~
  IF ~!IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("Hrothgar") !IsValidForPartyDialogue("Dar") !IsValidForPartyDialogue("Melora") !IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("Hrothgar") !IsValidForPartyDialogue("Dar") !IsValidForPartyDialogue("Melora") !IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("Hrothgar") !IsValidForPartyDialogue("Dar") !IsValidForPartyDialogue("Melora") !IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea3
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea3
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea3
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea3
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea3
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea3
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~I think I would prefer to hear what you have in mind <CHARNAME>. My mother was always telling me to beware those who gain their amusement from another's discomfort!~
  IF ~!IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("Hrothgar") !IsValidForPartyDialogue("Dar") !IsValidForPartyDialogue("Melora") !IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("Hrothgar") !IsValidForPartyDialogue("Dar") !IsValidForPartyDialogue("Melora") !IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
  IF ~!IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("Hrothgar") !IsValidForPartyDialogue("Dar") !IsValidForPartyDialogue("Melora") !IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea4
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea4
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea4
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea4
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea4
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea4
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~(*Wistfully*) I wish I had something I felt so passionately about. See how her music has deadened her nose to the stench of battle that we carry with us!~
  IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ151
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea1
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea1
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea1
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea1
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea1
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea1
END

END