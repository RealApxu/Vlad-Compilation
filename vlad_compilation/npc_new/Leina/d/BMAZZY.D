CHAIN BMAZZY NEJ0
~I am more used to the ups and downs and round and rounds of a hafling jig than the twistings and swayings of whatever that was we just performed. Still, it was... dare I say fun.~
END
 IF ~Gender(Player1,FEMALE) !InParty("njmelora")~ THEN EXTERN VPLEIB PCF2Leina38a
 IF ~Gender(Player1,MALE) !InParty("njmelora")~ THEN DO ~SetGlobal("VP_Danicng_Queen","GLOBAL",2)~ EXIT
 IF ~Gender(Player1,FEMALE) InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 53
 IF ~Gender(Player1,MALE) InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 56
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0

CHAIN BMAZZY NEJ1
~Should we also dress for the occasion Leina, I too have a suitable little number in my backpack? I like to be prepared for all situations when I travel the road. Besides, armour is cumbersome for dancing don't you think?~
END
 IF ~Gender(Player1,FEMALE)~ THEN EXTERN VPLEIB PCF2Leina35a
 IF ~Gender(Player1,MALE)~ THEN EXTERN VPLEIB PCM4Leina35a

CHAIN BMAZZY NEJ2
~The priests here are, I am sure, aware of where we have trod. Was it not them who sent us below? I am equally as certain that they are anxious to hear our report sooner than later, regardless of how we smell.~
END
 IF ~True()~ THEN EXTERN VPLEIB ClericQuest21
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB 88

CHAIN BMAZZY LeiDear1
~Leina, that would be like asking you to forever stay on one stage to sing your songs. I would not in the least like that idea. There is not a lotvariety here. Trademeet my home, has many travellers who come though bearing tales of those in need they pass on their way.~
EXTERN BMAZZY LeiDear1a

CHAIN BMAZZY LeiDear1a
~It is my wish to help wherever I can whenever I can and with the burden of office I would not have the freedom to do so. We are called adventurers not officers.~
EXTERN VPLEIB DeArnise13

CHAIN BMAZZY LeiDear2
~(*Laughing*) You bards always see a tale in each encounter. Though I enjoy your songs my talents lay in sensing where the next danger lies for I do not wish to be resting lower then I am.~
EXTERN VPLEIB DeArnise14

CHAIN BMAZZY LeiDear3
~After what we have just gone through, it would be a pleasure to bathe.~
EXTERN VPLEIB DeArnise15

CHAIN BMAZZY LeiTheat
~I thought the "idea" was to rest and raise a glass or two. We've more than earnt it this time!~
END
 IF ~!IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiTheat
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiTheat
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiTheat
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiTheat
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiTheat
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiTheat

CHAIN BMAZZY LeiThea3
~I take it the "her" you refer to is Leina. I am sure no malice is intended but why should you feel the need to jest with her, <CHARNAME>?~
END
 IF ~!IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea3
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea3
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea3
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea3
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea3
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea3
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea3

CHAIN BMAZZY LeiThea4
~I sincerely hope this is a jest you have in mind <CHARNAME>. I will not be a party to harming either Leina herself or her feelings!~
END
 IF ~!IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea4
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea4
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea4
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea4
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea4
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea4
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea4

CHAIN BMAZZY LeiThea1
~Oh... well I... I wasn't expecting that, <CHARNAME>, and I am sure Leina is going to be equally as surprised!~
END
 IF ~True()~ THEN EXTERN VPLEIB TheaQ151
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea1
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea1
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea1
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea1
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea1
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea1
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea1

CHAIN BMAZZY LeiThea2
~Leina please, it is quite unnecessary to sing my praises. I do what I do because it is the right thing, not to make a name for myself.~
END
 IF ~True()~ THEN EXTERN VPLEIB TheaQ161
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea2