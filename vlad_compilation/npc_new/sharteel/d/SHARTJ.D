BEGIN VPSHAJ

//NeJ Dialogue - Hrothgar Avalanche

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
EXTERN TUEZEK 7

//Nej Interjections
CHAIN VPSHAJ ezequest2
~Yea gods, we've carried bodies before... remember the decaying corpse we carried from the sewers of Baldurs Gate for that necromancer... Arkion was it? Phew, that one stunk to the pits!~
== VPSHAJ ~At least we're going after a fresh one this time!~
== VPSHAJ ~(*Looking around at the paraphernalia in Ezekial's room*)... Mmm... then again, if it's your delicate stomach worrying you, you may prefer to wait outside.~
EXTERN TUEZEK 9

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

//NeJ Interjection - Avalanche
CHAIN IMOENJ sharaval
~You are so cruel Shar-Teel! I don't know why <CHARNAME> didn't leave you locked in your cage for Irenicus to play with... but then again, I reckon you might have found an ally in your love of bloodshed!~
END
 IF ~True()~ THEN EXTERN NJHROJ 401
 IF ~InParty ("Jaheira")~ THEN EXTERN JAHEIRAJ sharaval