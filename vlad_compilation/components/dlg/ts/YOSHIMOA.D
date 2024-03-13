BEGIN ~YOSHIMOA~

IF ~Global("VP_YoshimoExcuse","GLOBAL",3)~ THEN BEGIN 0
  SAY ~Yoshimo, I came for you... for your black heart... for your soul.~
  IF ~~ THEN EXTERN ~YOSHJ~ TS219
END

IF ~~ THEN BEGIN 1
  SAY ~I have a contract for your soul. You cannot live your miserable life with this burden anymore.~
  IF ~~ THEN EXTERN ~YOSHJ~ TS220
END

IF ~~ THEN BEGIN 2
  SAY ~I have no choice but to force you to give me your heart and your soul.~
  IF ~~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",4) Enemy()~ EXIT
END