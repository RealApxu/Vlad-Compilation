BEGIN ~DGryiezx~

IF ~Global("VP_Slavers_Fight","GLOBAL",1)~ THEN BEGIN 0
	SAY ~Huh! What.......enemies...bruvvers,  show �em what we does with enemies!~
	IF ~~ THEN DO ~SetGlobal("VP_Slavers_Fight","GLOBAL",2)
SetGlobal("VP_Slave_Released","GLOBAL",1)
SetGlobal("MAP_GROUP_HOSTILE5","MYAREA",1)
Enemy()~ EXIT
END

IF ~NumTimesTalkedTo(0)
Global("VP_Slavers_Fight","GLOBAL",0)~ THEN BEGIN 1
	SAY ~Ugh?~
	IF ~~ THEN REPLY ~What goes on here? I heard this was a peaceful settlement but I see only signs of enslavement before me?~ GOTO 2a
END
	
IF ~~ THEN BEGIN 2a
	SAY ~Who you to be speaking Gryiezx? Gryiezx boss here now!~
	IF ~~ THEN REPLY ~Our names are irrelevant, what matters is that we are here to look into the concerns of this settlement.~ GOTO 3
	IF ~~ THEN REPLY ~Steady on big guy, just having a look at the set up you have here.~ GOTO 3
	IF ~~ THEN REPLY ~I am <GABBER>. Mind if we carry on looking around here?~ GOTO 3
END

IF ~~ THEN BEGIN 2
	SAY ~Looking eh! Me thinks you done looking, you go, clear off!~
	IF ~OR(2)
!InParty("Dar")
Dead("Dar")~ THEN REPLY ~Wait Gryiezx...~ GOTO 3
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ Gryiezx
END

IF ~~ THEN BEGIN 3
	SAY ~Gryiezx said go! You not wanted here. You go or you die!~
	IF ~~ THEN REPLY ~Might I make another suggestion Gryiezx? How about you let these people go or you die?~ GOTO 4
	IF ~~ THEN REPLY ~I have an abhorrence for slavery and will not tolerate it from any race. Now how about you leave whilst you still have that ugly head on your shoulders.~ GOTO 4
	IF ~~ THEN REPLY ~Your threats do not bother me big guy. If it is going to take a fight to release these people then I am more than ready~ GOTO 4
	IF ~~ THEN REPLY ~Be sensible! Do you really want to lose your life over a few wretched slaves Gryiezx?~ GOTO 4
END

IF ~~ THEN BEGIN 4
	SAY ~(*Laughs*) Hu, Hu, Hu,... puny men thing don�t scare Gryiezx. Me fight, my men fight, we ALL fight! And you die!~
	IF ~~ THEN DO ~SetGlobal("VP_Slavers_Fight","GLOBAL",2)
SetGlobal("VP_Slave_Released","GLOBAL",1)
SetGlobal("MAP_GROUP_HOSTILE5","MYAREA",1)
Enemy()~ EXIT
END
