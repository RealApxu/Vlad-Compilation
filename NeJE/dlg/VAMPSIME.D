BEGIN ~VAMPSIME~

IF ~~ THEN BEGIN 0
  SAY ~As you desire Mistress. (*Sime tries to walk towards you, hissing some threat, but stops short in her steps.*)~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~I cannot hurt <CHARNAME> Mistress. I cannot... I will take anybody's life but not his. Please, Mistress, forgive me my disobedience... punish me if you will, destroy me, but I will not harm him. I love him.~
  IF ~~ THEN EXTERN ~C6BODHI~ TS33
END