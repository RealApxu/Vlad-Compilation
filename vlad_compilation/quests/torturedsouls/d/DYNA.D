BEGIN DYNA

CHAIN
IF ~Global("VP_Dyna_Appears","GLOBAL",2)~ THEN DYNA 0
~What is transpiring? Where am I? Oh, <CHARNAME> is that you? I... remember now. Minsc, my loyal bodyguard, saved my life by allowing me to hide inside Boo�s body. But the spell went away. It all became mixed up... Oh, I have no right to live. Minsc will serve you better than me. Please, give me the hamster.~
END
 ++ ~I want both of you to live! Is there a way?~ EXTERN DYNA 1
 ++ ~I am sorry, Dynaheir. Take Boo.~ EXTERN DYNA 2
// ++ ~Stay with me and be my favourite witch again! Minsc had fulfilled his destiny in sacrificing his life for yours.~ EXTERN DYNA 3

CHAIN DYNA 1
~I am sorry, <CHARNAME> if there was one, I would be the first one to be walking it. Minsc, my loyal friend!~
END
 ++ ~I am sorry, Dynaheir. Take Boo.~ EXTERN DYNA 2
// ++ ~Stay with me and be my favourite witch again! Minsc had fulfilled his destiny in sacrificing his life for yours.~ EXTERN DYNA 3

CHAIN DYNA 2
~Good luck, <CHARNAME>.~
DO ~SetGlobal("VP_Dyna_Appears","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutD04")~
EXIT

/*
CHAIN DYNA 3
~I will miss him... My insane warrior... But anyway, glad to join you again.~
DO ~JoinParty()~
EXIT
*/