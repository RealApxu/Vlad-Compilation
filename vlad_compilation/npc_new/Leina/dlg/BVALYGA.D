CHAIN BVALYGA NEJ156
~Leina, I seldom refuse a lady but this time I must. I am a ranger not a puppet to dance when the lady pulls the strings.~
END
 IF ~Gender(Player1,FEMALE)~ THEN EXTERN VPLEIB PCF2Leina29a
 IF ~Gender(Player1,MALE)~ THEN EXTERN VPLEIB PCM4Leina29a


CHAIN BVALYGA LeiSpher1
~Bigger on the inside than the outside? Mmm... my cabin maybe?~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere18
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher1
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher1
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiSpher2
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiSpher1
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiSpher4
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiSpher1


CHAIN BVALYGA LeiSpher2
~A wizard's brain... that always holds more hot air than the whole of Zakhara.~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere19
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher2
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher2
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiSpher3
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiSpher2
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiSpher5
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiSpher2


CHAIN BVALYGA LeiSpher3
~I can only think of a closet?~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere20
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher3
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher3
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiSpher4
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiSpher3
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiSpher6
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiSpher3


CHAIN BVALYGA LeiSpher4
~That is why magic leads to corruption. Look what my relative did. He was experimenting on people without them even knowing about it.~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere26
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiSpher4


CHAIN BVALYGA LeiTheat
~(*Suspiciously*) What sort of an idea?~
END
 IF ~!IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiTheat
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiTheat
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiTheat
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiTheat


CHAIN BVALYGA LeiThea3
~If this is some juvenile prank that you have in mind, I suggest we forget it and rest whilst we can.~
END
 IF ~!IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea3
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea3
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea3
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea3
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea3


CHAIN BVALYGA LeiThea4
~Are we nothing but children here? I joined this group to see the ways of the world and instead, I am shown the ways of children. Bah!~
END
 IF ~!IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea4
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea4
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea4
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea4
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea4


CHAIN BVALYGA LeiThea1
~If it's a bath you seek, why not simply approach the barkeep and ask him for one? I see no need for childish charades over a tub of hot water!~
END
 IF ~True()~ THEN EXTERN VPLEIB TheaQ151
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea1
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea1
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea1
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea1
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea1