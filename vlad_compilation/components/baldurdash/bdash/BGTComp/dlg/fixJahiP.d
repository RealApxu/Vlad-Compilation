//Global("VP_Jah_Leaving_Fix","GLOBAL",1) - We are in BG2!

ADD_STATE_TRIGGER ~JAHEIRAP~ 8 ~Global("VP_Jah_Leaving_Fix","GLOBAL",1)~ 9 13 16 17 21 23 27 32 34 38 42 49 66 72 73
ADD_STATE_TRIGGER ~JAHEIRAP~ 8 ~!Dead("Galvarey")~ 23 32
ADD_STATE_TRIGGER ~JAHEIRAP~ 34 ~Dead("Galvarey")~ 42

ADD_STATE_TRIGGER ~JAHEIRAP~ 23 ~AreaCheck("AR0601")
AreaCheck("AR0602")
AreaCheck("AR0603")~

//Global("VP_Jah_Leaving_Fix","GLOBAL",0) - We are in BG1!

APPEND ~JAHEIRAP~

IF WEIGHT #-6 ~!InParty("Khalid")
Global("IWasKickedOut","LOCALS",0)
Global("VP_Jah_Leaving_Fix","GLOBAL",0)~ THEN BEGIN s0
  SAY ~I openly question your judgement, but it is your decision to make, and perhaps it is for the best. You do show some measure of leadership and have some of Gorion's sense, but little of his wisdom. Anyway, I should be glad to assist you in the future.~
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)
EscapeAreaMove("AR6801",315,711,13)~ EXIT
END

IF WEIGHT #-5 ~InParty("Khalid")
Global("IWasKickedOut","LOCALS",0)
Global("VP_Jah_Leaving_Fix","GLOBAL",0)~ THEN BEGIN s1
  SAY ~I openly question your judgement, but it is your decision to make, and perhaps it is for the best. You do show some measure of leadership and have some of Gorion's sense, but little of his wisdom. Anyway, I should be glad to assist you in the future. Come Khalid, we must depart for now.~
  IF ~~ THEN DO ~ActionOverride("Khalid",ChangeAIScript("",DEFAULT))
ActionOverride("Khalid",LeaveParty())
ActionOverride("Khalid",SetDialogue("KhaliP"))
ActionOverride("Khalid",SetGlobal("IWasKickedOut","LOCALS",1))
SetGlobal("IWasKickedOut","LOCALS",1)
ActionOverride("Khalid",EscapeAreaMove("AR6801",328,656,14))
EscapeAreaMove("AR6801",315,711,13)~ EXIT
END

IF WEIGHT #-4 ~!Dead("Khalid")
Global("IWasKickedOut","LOCALS",1)
Global("VP_Jah_Leaving_Fix","GLOBAL",0)~ THEN BEGIN s4
  SAY ~You have returned. Perhaps you have discovered some of the wisdom that Gorion tried to impart upon you? Shall we rejoin for the good of all?~
  IF ~~ THEN REPLY ~I have returned to you by my own choice, not that of my foster father. If you join with me, you join MY group, not Gorion's.~ GOTO s8
  IF ~~ THEN REPLY ~Regardless of Gorion's teachings, I have decided that it is not the best time for you to rejoin with me.~ GOTO s6
END

IF WEIGHT #-3 ~Dead("Khalid")
Global("IWasKickedOut","LOCALS",1)
Global("VP_Jah_Leaving_Fix","GLOBAL",0)~ THEN BEGIN s5
  SAY ~You have returned. Perhaps you have discovered some of the wisdom that Gorion tried to impart upon you? Shall I rejoin for the good of all?~
  IF ~~ THEN REPLY ~I have returned to you by my own choice, not that of my foster father. If you join with me, you join MY group, not Gorion's.~ GOTO s7
  IF ~~ THEN REPLY ~Regardless of Gorion's teachings, I have decided that it is not the best time for you to rejoin with me.~ GOTO s6
END

IF ~~ THEN BEGIN s6
  SAY ~Then I shall await the day when your senses return to you, for it is foolish to disregard such helpful and righteous allies.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s7
  SAY ~As well it should be.  Gorion taught you as best he could, and evidently some of that knowledge has stuck after all.~
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s8
  SAY ~As well it should be.  Gorion taught you as best he could, and evidently some of that knowledge has stuck after all.~
  IF ~~ THEN DO ~ActionOverride("Khalid",SetGlobal("IWasKickedOut","LOCALS",0))
ActionOverride("Khalid",JoinParty())
SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END
END