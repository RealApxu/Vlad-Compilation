BEGIN VPSHART

CHAIN
IF WEIGHT #0 ~Global("VP_ReleaseSharTeel","GLOBAL",1) Gender(Player1,MALE)~ THEN VPSHART r1male
~Hey, you girl... quit yammering and get your butt over here! Stop wasting time on that useless specimen and do what you do best... get this door open!~
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== VPSHART ~There's a low down, dirty son of a bitch around here somewhere needing to be taught a lesson about how not to take liberties with a girl's freedom!~
== VPSHART ~Sheeesh... men are pathetic, just look at where trusting that one has brought us to.~
== IMOENJ ~Keep your breeches on, I'll get to you in my own time! Hmm... looks like this lock is different to the other. Shame that, you're gonna just have to wait until another way is found... that is if <CHARNAME> here and me can spare the time to search around for it!~
== VPSHART ~Being here hasn't tempered your snooty disposition, nor your manners has it thief? Come to think of it, it hasn't done a lot for your sense either or you'd have left *him* to rot in his cage. What the heck, suit yourself, I'll not beg.~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("VP_ReleaseSharTeel","GLOBAL",1) Gender(Player1,FEMALE)~ THEN VPSHART r1female
~Hey, you girl... quit yammering and get your butt over here! Stop wasting time and do what you do best... get this door open!~
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== VPSHART ~There's a low down, dirty son of a bitch around here somewhere needing to be taught a lesson about how not to take liberties with a girl's freedom!~
== IMOENJ ~Keep your breeches on, I'll get to you in my own time! Hmm... looks like this lock is different to the other. Shame that, you're gonna just have to wait until another way is found.~
== VPSHART ~Being here hasn't tempered your disposition, nor your manners has it thief? Just as snooty as ever I see! Still, suit yourself, I'll not beg.~
EXIT

CHAIN
IF WEIGHT #-2 ~Global("VP_SharT_Released","GLOBAL",1)~ THEN VPSHART release6
~About time... now to get my hands on the bastard responsible for this.~
DO ~SetGlobal("VP_SharT_Released","GLOBAL",2) TakePartyItem("vpshrkey") DestroyItem("vpshrkey")~
END
 ++ ~My sentiments exactly, join with me Shar-Teel and together we'll run him down and relish in his slow, bloody death.~ EXTERN VPSHART release7_im
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Sorry Shar-Teel, but I don't need you along with me this time. Take your freedom my blood thirsty warrior and keep safe.~ EXTERN VPSHART release10
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Sorry Shar-Teel, but I don't need you along with me this time. Take your freedom my blood thirsty warrior and keep safe.~ EXTERN VPSHART release12
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Sorry Shar-Teel, I have had enough of your blood thirsty tendencies. Take your freedom and go.~ EXTERN VPSHART release8
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Sorry Shar-Teel, I have had enough of your blood thirsty tendencies. Take your freedom and go.~ EXTERN VPSHART release11

CHAIN VPSHART release7_im
~Then what are we waiting for... even now my hands itch to feel the sticky, warmth as I tear his still beating heart out of his chest, and wave it in front of his nose whilst watching his life's blood as it seeps into the dirt.~
DO ~AddExperienceParty(3000) TakePartyItem("vpshrkey") DestroyItem("vpshrkey") JoinParty()~
== IMOENJ IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN ~(*Her face pales*)... Please... keep your depraved fantasies to yourself!~
EXIT

CHAIN VPSHART release8
~I don't recall asking for the company of you or your snotty little thief here. I ignored sense once before and followed you, see the mess that has brought me to. As if Id be so stupid as to trust my skin to a less than useless man again!~
EXTERN VPSHART release9

CHAIN VPSHART release10
~Forget it! I ignored sense once before and listened to you, see the mess that has brought me to. I'm damned if I am going to be so stupid a second time and trust my skin to a less than useless male again!~
EXTERN VPSHART release9

CHAIN VPSHART release11
~I don't recall asking for the company of you or your snotty little thief here. I ignored sense once before and followed you, see the mess that has brought me to. As if Id be so stupid as to trust my skin to a goody-goody, male grovelling bitch!~
EXTERN VPSHART release9

CHAIN VPSHART release12
~Forget it! I ignored sense once before and listened to you, see the mess that has brought me to. No, I'm damned if I am going to be so stupid a second time and trust my skin to a goody-goody, male grovelling bitch!~
EXTERN VPSHART release9

CHAIN VPSHART release9
~I can catch him quicker alone and when I do, I'll deal with the sick bastard in my own way! (*She turns and strides away...*)~
DO ~AddExperienceParty(3000) TakePartyItem("vpshrkey") DestroyItem("vpshrkey") EscapeArea()~
EXIT

BEGIN VPSHAP

CHAIN
IF ~Global("KickedOut","LOCALS",0) !HappinessLT(Myself,-299)~ THEN VPSHAP NEJ0
~Damn it, you lose one well-fought duel to an oafish lout of a man and you get attached. I almost hate to say it but you've earned my respect.~
END
 IF ~OR(4) Global("VP_In_IWD_Part1","GLOBAL",1) Global("VP_InHalruaa","GLOBAL",1) Global("VP_OnIsland","GLOBAL",1) InWatchersKeep()~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) EscapeArea()~ EXIT
 IF ~Global("VP_In_IWD_Part1","GLOBAL",0) Global("VP_InHalruaa","GLOBAL",0) Global("VP_OnIsland","GLOBAL",0) !InWatchersKeep()~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) MoveGlobal("AR0702","vpshart",[511.465])~ EXIT

CHAIN
IF ~Global("KickedOut","LOCALS",0) HappinessLT(Myself,-299)~ THEN VPSHAP NEJ1
~Ah, I'm finally released from this infernal duty! I swear by every god in a million pantheons that I will NEVER lose a duel to another overly masculine thug in my life.~
END
 IF ~OR(4) Global("VP_In_IWD_Part1","GLOBAL",1) Global("VP_InHalruaa","GLOBAL",1) Global("VP_OnIsland","GLOBAL",1) InWatchersKeep()~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) EscapeArea()~ EXIT
 IF ~Global("VP_In_IWD_Part1","GLOBAL",0) Global("VP_InHalruaa","GLOBAL",0) Global("VP_OnIsland","GLOBAL",0) !InWatchersKeep()~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) MoveGlobal("AR0702","vpshart",[511.465])~ EXIT

CHAIN
IF ~Global("KickedOut","LOCALS",1)~ THEN VPSHAP NEJ2
~You have returned. That is fortunate, as I do not feel I have truly paid my debt to you just yet.~
END
 ++ ~A debt you have, but I do not wish to collect at this time. Perhaps later.~ EXTERN VPSHAP NEJ4
 ++ ~I do have need of you, but not because of your debt. You skill is invaluable to me.~ EXTERN VPSHAP NEJ3

CHAIN VPSHAP NEJ3
~Make no mistake; I follow you only because of your prowess in battle. When that falters, so does my loyalty.~
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN VPSHAP NEJ4
~Do not try my patience! I will wait for a time, but I have no tolerance of ungrateful winners.~
EXIT