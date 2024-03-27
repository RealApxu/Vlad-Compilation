BEGIN ~CHRDRAG~ 74306

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~It seems to me the Child of Bhaal is intensively looking for his true death... If you are going to live a little bit longer, you must defeat me... (*sadistic laugh*)~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Don't panick. I'm just kidding...(*laughs again*). Now, get out of my sight.~
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 2
  SAY ~I see you're really annoying person. So be it...~
  IF ~~ THEN DO ~Enemy()~ EXIT
END