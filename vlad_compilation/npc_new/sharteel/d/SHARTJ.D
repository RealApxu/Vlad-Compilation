BEGIN VPSHAJ

//NeJ Dialogue - Hrothgar Avalanche

CHAIN VPSHAJ kaylsold
~Bah killing that which is already dead, where's the sport in that? Still, if it moves I can kill it and when I'm through with it you can be sure it'll bloody well stay dead... permanently!~
DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",2) RealSetGlobalTimer("VP_Accalia_Hrothgar","GLOBAL",10)~
EXIT

//Promenade Talk
CHAIN
IF ~Global("PostCutSpeak","AR0700",1)~ THEN VPSHAJ imytaken
~NOOOO... bring him back you cowled bastards!~ [mute]
== VPSHAJ ~You pathetic wizards have not the means to torment him in the way he deserves, nor will he escape me no matter where you may have taken him...~
DO ~SetGlobal("PostCutSpeak","AR0700",2)~
== VPSHAJ ~VENGEANCE will be mine!~
END
 IF ~True()~ THEN EXIT
 IF ~ InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ N238
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ N528
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN YOSHJ N147

//Nej 2 - Iezikiel Quest
CHAIN VPSHAJ ezequest1
~Yea gods, we've carried bodies before... remember the decaying corpse we carried from the sewers of Baldurs Gate for that necromancer... Arkion was it? Phew, that one stunk to the pits!~
== VPSHAJ ~At least we're going after a fresh one this time! Those of you too morally challenged can stay with the necromancer...~
== VPSHAJ ~(*Looking around at the paraphernalia in Ezekial's room*)... Mmm... then again, if it's your delicate stomachs worrying you, you may prefer to wait outside for our return... wimps!~
EXTERN ~TuEzek~ 7

//Nej Interjections
CHAIN VPSHAJ ezequest2
~Yea gods, we've carried bodies before... remember the decaying corpse we carried from the sewers of Baldurs Gate for that necromancer... Arkion was it? Phew, that one stunk to the pits!~
== VPSHAJ ~At least we're going after a fresh one this time!~
== VPSHAJ ~(*Looking around at the paraphernalia in Ezekial's room*)... Mmm... then again, if it's your delicate stomach worrying you, you may prefer to wait outside.~
EXTERN ~TuEzek~ 9

CHAIN VPSHAJ dragoneye
~(*Pointing her sword*) I suppose it does somewhat resemble a dragon's head and I can see why some may find it impressive, but in reality... it's just another damp dungeon for us to crawl through.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXIT
 IF ~InParty("Imoen") !Dead("Imoen")~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXTERN ~IMOENJ~ NEJ147
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXTERN IMOEN2J VP_FIX63
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXTERN JAHEIRAJ NEJ591
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXTERN MINSCJ NEJ288

CHAIN VPSHAJ lizardking
~(*Wiping her sword on her sleeve*) That's that... one less slimy reptile hunting for his mistress. If that's the best she can muster then I reckon she and her minions are going to be pretty hungry, not to say angry when we find them... best we stay alert from here lest they see us as their next meal!~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN NJHROJ 273
 IF ~InParty("Accalia") !Dead("Accalia")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN NJACCJ 59
 IF ~InParty("Imoen") !Dead("Imoen")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~IMOENJ~ NEJ148
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN IMOEN2J VP_FIX64
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN JAHEIRAJ NEJ627
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN MINSCJ NEJ291

CHAIN VPSHAJ erevbody
~(*Scoffs*) Bloody foolish elf you mean! The arrogance of elves, the males especially... well this one certainly got what he deserved!~
EXTERN NJHROJ sharerev

CHAIN VPSHAJ erevbod2
~Bravery and courage I can certainly respect, but stupidity... never!~
EXIT

CHAIN VPSHAJ egenia
~If you seriously believe that the gods give a toss about what is going on down here then you are all fools! I trust only my sword and my own eyes, not the off chance that the gods may be watching my back... or my front.~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Minsc") !Dead("Minsc") OR(2) !InParty("njdar") Dead("njdar")~ THEN EXTERN MINSCJ NEJ326
 IF ~InParty("Minsc") !Dead("Minsc") InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARJ 62

CHAIN VPSHAJ nearpor2
~At last we leave this miserable cold. What vexes me most is no one will believe we fought the ancestors of the creatures of our time and lived, it lessens the thrill of the kills we have made. It'll be good to be back where honest bloodshed is appreciated!~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutNJ4")~
EXIT

/*ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() SetGlobal("KickedOut","LOCALS",1) LeaveParty() EscapeAreaMove("AR0086",9,9,9)*/

//NeJ Interjection - starting dialogue
CHAIN VPSHAJ nejopen1
~(*Drawing her sword*)... Then it'll be my pleasure to leave the dogs on the floor lapping up their own blood!~ [mute]
== IMOENJ ~(*Noticeably a shade paler*)... I... I've seen enough blood thank you! Irenicus has the same fascination with it as you Shar-Teel... only he likes to share his depravity!~
== VPSHAJ ~Still have a weak stomach then thief? You should have stayed in Candlekeep if you can't take the heat.~
END
 ++ ~This place does feel different, but we should not get our hopes up nor let our guard down because of the way we feel. One thing is for sure, we will not discover anything standing around here so I suggest we move quickly and prepare ourselves for whoever or whatever lies in wait at the bottom of these stairs.~ EXTERN IMOENJ NEJ77

//NeJ Interjection - Avalanche
CHAIN IMOENJ sharaval
~You are so cruel Shar-Teel! I don't know why <CHARNAME> didn't leave you locked in your cage for Irenicus to play with... but then again, I reckon you might have found an ally in your love of bloodshed!~
END
 IF ~True()~ THEN EXTERN NJHROJ 401
 IF ~InParty ("Jaheira")~ THEN EXTERN JAHEIRAJ sharaval

//Leina Interactions

CHAIN VPSHAJ LeiSpher1
~What do you take me for... I am a warrior not a bloody contestant in your guessing game bard!~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere10
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher1
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher1
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiSpher2
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiSpher1
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiSpher4
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiSpher1
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiSpher1
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiSpher3
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiSpher2
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiSpher1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiSpher1

CHAIN VPSHAJ RadianQ
~Finally the stinkin' male is gettin' a brain. Your damn right, <CHARNAME>, who gives a crap who starts it and how. As long as blood flows. So you shut your yammering bard!~
END
 IF ~True()~ THEN EXTERN VPLEIB RadiaQ10
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN RadianQB

CHAIN VPSHAJ RadianQ1
~I think a snowball has a better chance in hell than this bard being able to change her pie in the sky attitude. For all her, *I've grown* attitude, she still doesn't use her brain!~
END
 IF ~True()~ THEN EXTERN VPLEIB RadiQ19A
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI RadianQ
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN RadianQ

CHAIN VPSHAJ LeiRadia
~Oh suck it up bard, who the hell cares where we sit as long as they have ale and hot water. I'll never know how in the nine hells you ever got into this party. You're such a prig!~
END
 IF ~True()~ THEN EXTERN VPLEIB RadiQ21B
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiRadia
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiRadia
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiRadia
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiRadia
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiRadia
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiRadia