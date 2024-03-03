APPEND ~BJAHEIR~

IF ~~ THEN BEGIN NEJ491
  SAY ~Now is not a good time to treat us to a song child!~
  IF ~~ THEN EXTERN ~BLEINA~ 185
END

IF ~~ THEN BEGIN NEJ492
  SAY ~That was all! We tread a perilous road, not knowing what lies ahead and you let your harp alert our presence to all a sundry. Why can't you put the thing in your backpack child, lessen the chances of it happening again?~
  IF ~~ THEN EXTERN ~BLEINA~ 186
END

IF ~~ THEN BEGIN NEJ493
  SAY ~For a half elf you are still a child. You may think your time on the road and your experiences of the world entitles you to be seen as grown up, but your years, or should that be your lack of them, mark you as a child.~
  IF ~~ THEN EXTERN ~BLEINA~ 187
END

IF ~~ THEN BEGIN NEJ494
  SAY ~My life has been fraught with responsibilities that you know nothing of child! Let me tell you of another I know with the same know it all and insolent attitude that you exhibit. You have probably heard <CHARNAME> speak of Imoen, she too thought she was all grown up. I wonder how her smart mouth is helping her cope with Irenicus now?~
  IF ~~ THEN EXTERN ~BLEINA~ 188
END

IF ~~ THEN BEGIN NEJ495
  SAY ~I am sorry child, that remark about Imoen was unfair, I admit. It's true my turns blood cold when I think what that poor child is being subjected to by that sadistic bastard. As for why she speaks as she does... it is because she is a child and enjoys rebelling against her elders. After all, is that not the real reason you ended up in an unsavoury marriage, to spite your parents?~
  IF ~~ THEN EXTERN ~BLEINA~ 189
END

IF ~~ THEN BEGIN NEJ496
  SAY ~I will try to remember that, but it will be easier to do so if you have lost that insolent attitude of yours by the time we next speak.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ497
  SAY ~Khalid wasn't much of a talker but when we danced... words were not important He said all he had to say with his eyes and the way he held me. I will never dance again.~
  IF ~~ THEN EXTERN ~BLEINA~ PCF2Leina36a
END

IF ~~ THEN BEGIN NEJ498
  SAY ~(*To herself*) Would you approve dear heart, I wonder?~
  IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~BLEINA~ PCF2Leina2a
  IF ~Gender(Player1,MALE)~ THEN EXTERN ~BLEINA~ PCM4Leina2b
	IF ~InParty("Yoshimo")~ THEN EXTERN ~BYOSHIM~ NEJ9
END

IF ~~ THEN BEGIN NEJ499
  SAY ~(*Clucking her tongue and raising her voice*) Please <CHARNAME> this is a holy place... Gorion would turn in his grave if he could hear you carrying on so!~
	IF ~True()~ THEN EXTERN ~BLEINA~ ClericQuest17
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ 8
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ 130
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ 59
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ NEJ141
END

IF ~~ THEN BEGIN NEJ500
	SAY ~Yes well... I doubt they expect to see it walking back to greet them!~
	IF ~True()~ THEN EXTERN ~BLEINA~ ClericQuest21
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ 88
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ NEJ2
END

IF ~~ THEN BEGIN LeiSpher1
	SAY ~Leina can we not grow up? A guessing game does not make a good impression, but if it will get us out of this sooner then a lodge.~
	IF ~True()~ THEN EXTERN ~BLEINA~ Sphere18
	IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher1
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher1
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher2
END

IF ~~ THEN BEGIN LeiSpher2
	SAY ~Child will you make up your mind? We will be here for a fortnight if you keep changing the size.~
	IF ~True()~ THEN EXTERN ~BLEINA~ Sphere19
	IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher2
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher2
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher3
END

IF ~~ THEN BEGIN LeiSpher3
	SAY ~(*Rolling her eyes and clicking her tongue*) Tsk... did I say a fortnight?~
	IF ~True()~ THEN EXTERN ~BLEINA~ Sphere20
	IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher3
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher3
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher4
END

IF ~~ THEN BEGIN LeiSpher4
	SAY ~Yes what you have said reminds me of a book Khalid, found in the library at Candlekeep. He was laughing very hard over this bard's tale about some man who had a box that was bigger on the inside then the outside.~
	IF ~~ THEN EXTERN ~BLEINA~ Sphere26
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~I have seen some of your ideas in the past, perhaps it would be wise to sleep on it before you act on this one!~
 IF ~!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~(*Smiles to herself*) Do you really think so <CHARNAME>, do you really think so?~
 IF ~!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~(*Sighing*) Here was I thinking, that with all that gone before, maybe, just maybe you had grown up a little, <CHARNAME>.~
 IF ~!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~Tsk! All of this for what... to see who gets in first and suggests a bath? Silvanus protect me from the whims of children!~
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
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~Girl, get that silly notion out of your mind. I have no wish to be part of a bard's romantic tale.~
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
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiThea2
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea2
END

END