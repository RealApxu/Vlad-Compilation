BEGIN ~DYNA~

IF ~Global("VP_Dyna_Appears","GLOBAL",2)~ THEN BEGIN 0
  SAY ~What is transpiring? Where am I? Oh, <CHARNAME> is that you? I... remember now. Minsc, my loyal bodyguard, saved my life by allowing me to hide inside Boo’s body. But the spell went away. It all became mixed up... Oh, I have no right to live. Minsc will serve you better than me. Please, give me the hamster.~
  IF ~~ THEN REPLY ~I want both of you to live! Is there a way?~ GOTO 1
  IF ~~ THEN REPLY ~I am sorry, Dynaheir. Take Boo.~ GOTO 2
//  IF ~~ THEN REPLY ~Stay with me and be my favourite witch again! Minsc had fulfilled his destiny in sacrificing his life for yours.~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY ~I am sorry, <CHARNAME> if there was one, I would be the first one to be walking it. Minsc, my loyal friend!~
  IF ~~ THEN REPLY ~I am sorry, Dynaheir. Take Boo.~ GOTO 2
//  IF ~~ THEN REPLY ~Stay with me and be my favourite witch again! Minsc had fulfilled his destiny in sacrificing his life for yours.~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~Good luck, <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("VP_Dyna_Appears","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutD04")~ EXIT
END

//IF ~~ THEN BEGIN 3
//  SAY ~I will miss him... My insane warrior... But anyway, glad to join you again.~
//  IF ~~ THEN DO ~JoinParty()~ EXIT
//END