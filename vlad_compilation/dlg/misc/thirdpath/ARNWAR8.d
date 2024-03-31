ADD_TRANS_TRIGGER ARNWAR08 2 ~Global("WorkingForBodhi","GLOBAL",1)~ DO 0 1

EXTEND_BOTTOM ARNWAR08 2
  IF ~Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~I have no idea, what you're talking about. Explain yourself.~ GOTO kr1
END

ADD_TRANS_TRIGGER ARNWAR08 8 ~Global("WorkingForBodhi","GLOBAL",1)~ DO 0

EXTEND_BOTTOM ARNWAR08 8
  IF ~Global("WorkingForBodhi","GLOBAL",0)~ THEN DO ~EscapeArea()~ EXIT
END

APPEND ~ARNWAR08~

IF ~~ THEN BEGIN kr1
  SAY ~Ah, you are not working for the mistress. Anyway, it matters not. You have no choice but to kill Aran or he will kill you.~
  IF ~~ THEN GOTO 5
END

END