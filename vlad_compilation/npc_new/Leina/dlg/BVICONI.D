CHAIN BVICONI NEJ0
~Whilst you persist in leading these males into believing they are a females equal I will have none of your surface games. (*She turns her back and spits out her next words*) Jal shinduago jalilen ph' jal yibin!~
END
 IF ~Gender(Player1,FEMALE)~ THEN EXTERN VPLEIB PCF2Leina31a
 IF ~Gender(Player1,MALE)~ THEN EXTERN VPLEIB PCM4Leina31a

CHAIN BVICONI LeiSpher1
~How pathetic. You surface dwellers are prepared to fight like dogs in heat over such a pitiful female... if that's what you want to call her.~
EXTERN VPLEIB Sphere8a

CHAIN BVICONI LeiSpher2
~For once a male has half an idea which is about as good as a half elf, maybe the males should split her in half the whole thing is pathetic.~
EXTERN VPLEIB Sphere13a

CHAIN BVICONI LeiSpher3
~You surface dwellers are so stupid. Who really cares?~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere10
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher1
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher1
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiSpher2
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiSpher1
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiSpher4
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiSpher1
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiSpher1

CHAIN BVICONI LeiTheat
~Then keep it yourself, your mundane thoughts are of no interest to me.~
END
 IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiTheat
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiTheat
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiTheat

CHAIN BVICONI LeiThea3
~Bah! You surfacers and your infantile minds! It is no wonder you have not progressed, unlike the drow! Udos zhal ilstar ultrin... you will see!~
END
 IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea3
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea3
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea3
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea3

CHAIN BVICONI LeiThea4
~Children, you are all nought but children! It's no wonder you surfacers struggle to survive... udos zhal ilstar ultrin!~
END
 IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea4
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea4
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea4
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea4

CHAIN BVICONI LeiThea1
~Go play your foolish prank! If the half elf hasn't sussed you yet then the half breed deserves to be made a fool of.~
== BVICONI ~(*She spits out her next words*) Kitrye kyuvren ph' nau mzild darthirii taga ph' rothe!~
END
 IF ~True()~ THEN EXTERN VPLEIB TheaQ151
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea1
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea1
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea1
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea1

CHAIN BVICONI LeiThea2
~Leina, I need no such silly songs. But if you must, be sure you tell of how I ripped the beasts hearts out with my bare hands and laid them open for the vultures to feed on their soft parts.~
EXTERN VPLEIB TheaQ161

CHAIN BVICONI RadianQ
~Bah! You bard, you couldn't handle an evil thought if one ever took a hold on you, you'd soil your pants and fall down screaming!~
EXTERN VPLEIB RadiQ19A

CHAIN BVICONI LeiRadia
~Surfacers! Your fetish for fluffy towels is unhealthy girl, some one needs to give you a good rub down with a horse blanket. That'll cure all this jumping into hot water every spare minute!~
EXTERN VPLEIB RadiQ21B