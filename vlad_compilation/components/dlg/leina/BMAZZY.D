APPEND ~BMAZZY~

IF ~~ THEN BEGIN NEJ0
  SAY ~I am more used to the ups and downs and round and rounds of a hafling jig than the twistings and swayings of whatever that was we just performed. Still, it was... dare I say fun.~
  IF ~Gender(Player1,FEMALE)
!InParty("Melora")~ THEN EXTERN ~BLEINA~ PCF2Leina38a
	IF ~Gender(Player1,MALE)
!InParty("Melora")~ THEN DO ~SetGlobal("VP_Danicng_Queen","GLOBAL",2)~ EXIT
	IF ~Gender(Player1,FEMALE)
InParty("Melora")
InParty("Taffic")~ THEN EXTERN ~BMELORA~ 53
	IF ~Gender(Player1,MALE)
InParty("Melora")
InParty("Taffic")~ THEN EXTERN ~BMELORA~ 56
	IF ~InParty("Jan")~ THEN EXTERN ~BJAN~ NEJ0
	IF ~InParty("Kachiko")~ THEN EXTERN ~BKACHI~ NEJ0
END

IF ~~ THEN BEGIN NEJ1
  SAY ~Should we also dress for the occasion Leina, I too have a suitable little number in my backpack? I like to be prepared for all situations when I travel the road. Besides, armour is cumbersome for dancing don't you think?~
  IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~BLEINA~ PCF2Leina35a
	IF ~Gender(Player1,MALE)~ THEN EXTERN ~BLEINA~ PCM4Leina35a
END

IF ~~ THEN BEGIN NEJ2
	SAY ~The priests here are, I am sure, aware of where we have trod. Was it not them who sent us below? I am equally as certain that they are anxious to hear our report sooner than later, regardless of how we smell.~
	IF ~True()~ THEN EXTERN ~BLEINA~ ClericQuest21
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ 88
END

IF ~~ THEN BEGIN LeiDear1
	SAY ~Leina, that would be like asking you to forever stay on one stage to sing your songs. I would not in the least like that idea. There is not a lotvariety here. Trademeet my home, has many travellers who come though bearing tales of those in need they pass on their way.~
	IF ~~ THEN GOTO LeiDear1a
END

IF ~~ THEN BEGIN LeiDear1a
	SAY ~It is my wish to help wherever I can whenever I can and with the burden of office I would not have the freedom to do so. We are called adventurers not officers.~
	IF ~~ THEN EXTERN ~BLEINA~ DeArnise13	
END

IF ~~ THEN BEGIN LeiDear2
	SAY ~(*Laughing*) You bards always see a tale in each encounter. Though I enjoy your songs my talents lay in sensing where the next danger lies for I do not wish to be resting lower then I am.~
	IF ~~ THEN EXTERN ~BLEINA~ DeArnise14	
END

IF ~~ THEN BEGIN LeiDear3
	SAY ~After what we have just gone through, it would be a pleasure to bathe.~
	IF ~~ THEN EXTERN ~BLEINA~ DeArnise15	
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~I thought the "idea" was to rest and raise a glass or two. We've more than earnt it this time!~
 IF ~!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Nalia")
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
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~I take it the "her" you refer to is Leina. I am sure no malice is intended but why should you feel the need to jest with her, <CHARNAME>?~
 IF ~!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Nalia")
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
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~I sincerely hope this is a jest you have in mind <CHARNAME>. I will not be a party to harming either Leina herself or her feelings!~
 IF ~!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Nalia")
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
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~Oh... well I... I wasn't expecting that, <CHARNAME>, and I am sure Leina is going to be equally as surprised!~
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
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~Leina  please, it is quite unnecessary to sing my praises. I do what I do because it is the right thing, not to make a name for myself.~
	IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ161
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea2
END

END