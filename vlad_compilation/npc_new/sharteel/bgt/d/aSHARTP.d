REPLACE ~SHARTP~

IF ~!Global("VP_Join_SharTeel","GLOBAL",1)
Global("KickedOut","LOCALS",0)
!HappinessLT(Myself,-299)~ THEN BEGIN 0
  SAY ~Damn it, you lose one well-fought duel to an oafish lout of a man and you get attached. I almost hate to say it but you've earned my respect.~
  IF ~OR(4)
Global("VP_In_IWD_Part1","GLOBAL",1)
Global("VP_InHalruaa","GLOBAL",1)
Global("VP_OnIsland","GLOBAL",1)
InWatchersKeep()~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeArea()~ EXIT
IF ~Global("VP_In_IWD_Part1","GLOBAL",0)
Global("VP_InHalruaa","GLOBAL",0)
Global("VP_OnIsland","GLOBAL",0)
!InWatchersKeep()~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("AR0702","vpshart",[511.465])~ EXIT
END

IF ~!Global("VP_Join_SharTeel","GLOBAL",1)
Global("KickedOut","LOCALS",0)
HappinessLT(Myself,-299)~ THEN BEGIN 1
  SAY ~Ah, I'm finally released from this infernal duty! I swear by every god in a million pantheons that I will NEVER lose a duel to another overly masculine thug in my life.~
  IF ~OR(4)
Global("VP_In_IWD_Part1","GLOBAL",1)
Global("VP_InHalruaa","GLOBAL",1)
Global("VP_OnIsland","GLOBAL",1)
InWatchersKeep()~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeArea()~ EXIT
IF ~Global("VP_In_IWD_Part1","GLOBAL",0)
Global("VP_InHalruaa","GLOBAL",0)
Global("VP_OnIsland","GLOBAL",0)
!InWatchersKeep()~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("AR0702","vpshart",[511.465])~ EXIT
END

IF ~!Global("VP_Join_SharTeel","GLOBAL",1)
Global("KickedOut","LOCALS",1)~ THEN BEGIN 2
  SAY ~You have returned. That is fortunate, as I do not feel I have truly paid my debt to you just yet.~
  IF ~~ THEN REPLY ~A debt you have, but I do not wish to collect at this time.  Prehaps later.~ GOTO 4
  IF ~~ THEN REPLY ~I do have need of you, but not because of your debt.  You skill is invaluable to me.~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Make no mistake; I follow you only because of your prowess in battle. When that falters, so does my loyalty.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Do not try my patience!  I will wait for a time, but I have no tolerance of ungrateful winners.~
  IF ~~ THEN EXIT
END
END

SET_WEIGHT SHARTP 0 #3
SET_WEIGHT SHARTP 1 #4
SET_WEIGHT SHARTP 2 #5

APPEND ~SHARTP~

IF WEIGHT #0 ~Global("VP_Join_SharTeel","GLOBAL",1)
Global("VP_ReleaseSharTeel","GLOBAL",1)
Gender(Player1,MALE)~ THEN BEGIN r1male
  SAY ~Hey, you girl... quit yammering and get your butt over here! Stop wasting time on that useless specimen and do what you do best... get this door open!~
  IF ~~ THEN GOTO r2male
END

IF ~~ THEN BEGIN r2male
  SAY ~There�s a low down, dirty son of a bitch around here somewhere needing to be taught a lesson about how not to take liberties with a girl�s freedom!~
IF ~InParty("Imoen2")~ THEN GOTO r3male_im2
IF ~InParty("Imoen")~ THEN GOTO r3male_im
END

IF WEIGHT #1 ~Global("VP_Join_SharTeel","GLOBAL",1)
Global("VP_ReleaseSharTeel","GLOBAL",1)
Gender(Player1,FEMALE)~ THEN BEGIN r1female
  SAY ~Hey, you girl... quit yammering and get your butt over here! Stop wasting time and do what you do best... get this door open!~
  IF ~InParty("Imoen2")~ THEN GOTO r2female_im2
  IF ~InParty("Imoen")~ THEN GOTO r2female_im
END

IF WEIGHT #2 ~Global("VP_Join_SharTeel","GLOBAL",1)
Global("VP_SharT_Released","GLOBAL",1)~ THEN BEGIN release6
  SAY ~About time... now to get my hands on the bastard responsible for this.~
  IF ~OR(2)
InParty("Imoen2")
See("Imoen2")~ THEN REPLY ~My sentiments exactly, join with me Shar-Teel and together we�ll run him down and relish in his slow, bloody death.~ GOTO release7_im2
  IF ~OR(2)
InParty("Imoen")
See("Imoen")~ THEN REPLY ~My sentiments exactly, join with me Shar-Teel and together we�ll run him down and relish in his slow, bloody death.~ GOTO release7_im
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Sorry Shar-Teel, but I don�t need you along with me this time. Take your freedom my blood thirsty warrior and keep safe.~ GOTO release10
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Sorry Shar-Teel, but I don�t need you along with me this time. Take your freedom my blood thirsty warrior and keep safe.~ GOTO release12
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Sorry Shar-Teel, I have had enough of your blood thirsty tendencies. Take your freedom and go.~ GOTO release8
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Sorry Shar-Teel, I have had enough of your blood thirsty tendencies. Take your freedom and go.~ GOTO release11
END

IF ~~ THEN BEGIN release8
  SAY ~I don�t recall asking for the company of you or your snotty little thief here. I ignored sense once before and followed you, see the mess that has brought me to. As if Id be so stupid as to trust my skin to a less than useless man again!~
  IF ~~ THEN GOTO release9
END
 
IF ~~ THEN BEGIN release9
  SAY ~I can catch him quicker alone and when I do, I�ll deal with the sick bastard in my own way! (*She turns and strides away...*)~
  IF ~~ THEN DO ~TakePartyItem("vpshrkey")
DestroyItem("vpshrkey")
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN release10
  SAY ~Forget it! I ignored sense once before and listened to you, see the mess that has brought me to. I�m damned if I am going to be so stupid a second time and trust my skin to a less than useless male again!~
  IF ~~ THEN GOTO release9
END

IF ~~ THEN BEGIN release11
  SAY ~I don�t recall asking for the company of you or your snotty little thief here. I ignored sense once before and followed you, see the mess that has brought me to. As if Id be  so stupid as to trust my skin to a goody-goody, male grovelling bitch!~
  IF ~~ THEN GOTO release9
END

IF ~~ THEN BEGIN release12
  SAY ~Forget it! I ignored sense once before and listened to you, see the mess that has brought me to. No, I�m damned if I am going to be so stupid a second time and trust my skin to a goody-goody, male grovelling bitch!~
  IF ~~ THEN GOTO release9
END
END

/////////////CHAINs////////////////

CHAIN IF ~~ THEN SHARTP r3male_im2
  ~Sheeesh... men are pathetic, just look at where trusting that one has brought us to.~
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOEN2J
~Keep your breeches on, I�ll get to you in my own time! Hmm... looks like this lock is different to the other. Shame that, you�re gonna just have to wait until another way is found... that is if <CHARNAME> here and me can spare the time to search around for it!~
== SHARTP
~Being here hasn�t tempered your snooty disposition, nor your manners has it thief? Come to think of it, it hasn�t done a lot for your sense either or you�d have left *him* to rot in his cage. What the heck, suit yourself, I�ll not beg.~
EXIT

CHAIN IF ~~ THEN SHARTP r3male_im
   ~Sheeesh... men are pathetic, just look at where trusting that one has brought us to.~
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOENJ
~Keep your breeches on, I�ll get to you in my own time! Hmm... looks like this lock is different to the other. Shame that, you�re gonna just have to wait until another way is found... that is if <CHARNAME> here and me can spare the time to search around for it!~
== SHARTP
~Being here hasn�t tempered your snooty disposition, nor your manners has it thief? Come to think of it, it hasn�t done a lot for your sense either or you�d have left *him* to rot in his cage. What the heck, suit yourself, I�ll not beg.~
EXIT

CHAIN IF ~~ THEN SHARTP r2female_im2
   ~There�s a low down, dirty son of a bitch around here somewhere needing to be taught a lesson about how not to take liberties with a girl�s freedom!~
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOEN2J
~Keep your breeches on, I�ll get to you in my own time! Hmm... looks like this lock is different to the other. Shame that, you�re gonna just have to wait until another way is found.~
== SHARTP
~Being here hasn�t tempered your disposition, nor your manners has it thief? Just as snooty as ever I see! Still, suit yourself, I�ll not beg.~
EXIT

CHAIN IF ~~ THEN SHARTP r2female_im
~There�s a low down, dirty son of a bitch around here somewhere needing to be taught a lesson about how not to take liberties with a girl�s freedom!~
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOENJ
~Keep your breeches on, I�ll get to you in my own time! Hmm... looks like this lock is different to the other. Shame that, you�re gonna just have to wait until another way is found.~
== SHARTP
~Being here hasn�t tempered your disposition, nor your manners has it thief? Just as snooty as ever I see! Still, suit yourself, I�ll not beg.~
EXIT

CHAIN IF ~~ THEN SHARTP release7_im2
~Then what are we waiting for... even now my hands itch to feel the sticky, warmth as I tear his still beating heart out of his chest, and wave it in front of his nose whilst watching his life�s blood as it seeps into the dirt.~
DO ~SetGlobal("VP_SharT_Released","GLOBAL",2)~
== IMOEN2J
~(*Her face pales*)... Please... keep your depraved fantasies to yourself!~
DO ~TakePartyItem("vpshrkey")
DestroyItem("vpshrkey")
AddExperienceParty(3000)
ActionOverride("vpshart",JoinParty())~
EXIT

CHAIN IF ~~ THEN SHARTP release7_im
~Then what are we waiting for... even now my hands itch to feel the sticky, warmth as I tear his still beating heart out of his chest, and wave it in front of his nose whilst watching his life�s blood as it seeps into the dirt.~
DO ~SetGlobal("VP_SharT_Released","GLOBAL",2)~
== IMOENJ
~(*Her face pales*)... Please... keep your depraved fantasies to yourself!~
DO ~TakePartyItem("vpshrkey")
DestroyItem("vpshrkey")
AddExperienceParty(3000)
ActionOverride("vpshart",JoinParty())~
EXIT