REPLACE ~GORPEL~

IF ~~ THEN BEGIN 1 
  SAY ~Iron mines in the Cloakwood? Your tales are tall, indeed, and we are richer for the telling. Consider yourselves honorary members of the Merry Fools and may ale and friendship always flow within these hallowed halls! A toast, you drunkards, to <CHARNAME> and the winsome souls that surround us now!~
  IF ~~ THEN DO ~IncrementGlobal("GorpalEnemies","AR7216",1)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Goodnight and goodbye to you, <CHARNAME>. It is late and we were leaving, weren't we my Merry Fools?~
  IF ~~ THEN DO ~IncrementGlobal("GorpalEnemies","AR7216",1)
ActionOverride("FARLUCK",EscapeArea())
ActionOverride("TURPIN",EscapeArea())
ActionOverride("NELIK",EscapeArea())
EscapeArea()~ EXIT
END

END
