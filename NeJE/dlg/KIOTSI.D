BEGIN ~KIOTSI~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~I see it's my job to finish you off? Wonderful! I was looking forward to it!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END
