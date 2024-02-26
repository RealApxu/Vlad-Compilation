BEGIN ~SHARTP~

IF ~Global("KickedOut","LOCALS",0)
!HappinessLT(Myself,-299)
OR(2)
Global("ENDOFBG1","GLOBAL",2)
Global("VP_In_BG1","GLOBAL",0)~ THEN BEGIN NEJ0
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
MoveGlobal("AR0702","Sharteel",[511.465])~ EXIT
END

IF ~Global("KickedOut","LOCALS",0)
HappinessLT(Myself,-299)
OR(2)
Global("ENDOFBG1","GLOBAL",2)
Global("VP_In_BG1","GLOBAL",0)~ THEN BEGIN NEJ1
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
MoveGlobal("AR0702","Sharteel",[511.465])~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)
OR(2)
Global("ENDOFBG1","GLOBAL",2)
Global("VP_In_BG1","GLOBAL",0)~ THEN BEGIN NEJ2
  SAY ~You have returned. That is fortunate, as I do not feel I have truly paid my debt to you just yet.~
  IF ~~ THEN REPLY ~A debt you have, but I do not wish to collect at this time.  Prehaps later.~ GOTO NEJ4
  IF ~~ THEN REPLY ~I do have need of you, but not because of your debt.  You skill is invaluable to me.~ GOTO NEJ3
END

IF ~~ THEN BEGIN NEJ3
  SAY ~Make no mistake; I follow you only because of your prowess in battle. When that falters, so does my loyalty.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN NEJ4
  SAY ~Do not try my patience!  I will wait for a time, but I have no tolerance of ungrateful winners.~
  IF ~~ THEN EXIT
END