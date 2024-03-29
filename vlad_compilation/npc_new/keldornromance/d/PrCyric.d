BEGIN ~PRCYRIC~

IF ~~ THEN BEGIN 0
  SAY ~We can not breach their defences, sir.~
  IF ~~ THEN EXTERN ~ZORNNAG~ 1
END

IF ~~ THEN BEGIN 1
  SAY ~As far as I know, it is the lord of the castle, count Firecam, senior officer of the Order of Radiant Heart.~
  IF ~~ THEN EXTERN ~ZORNNAG~ 2
END

IF ~~ THEN BEGIN 2
  SAY ~Kill him, sir... But that will only cause an uprising...~
  IF ~~ THEN EXTERN ~ZORNNAG~ 3
END

IF ~~ THEN BEGIN 3
  SAY ~Yes sir. Consider it done sir!~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut09")~ EXIT
END