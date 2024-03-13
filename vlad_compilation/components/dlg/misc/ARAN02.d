REPLACE_STATE_TRIGGER ARAN02 0
~NumTimesTalkedTo(0) Global("WorkingForBodhi","GLOBAL",1)~

APPEND ~ARAN02~

IF ~NumTimesTalkedTo(0) Global("WorkingForBodhi","GLOBAL",0)~ THEN BEGIN kr1
  SAY ~Fools, I'd help you! Now you'll die!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

END