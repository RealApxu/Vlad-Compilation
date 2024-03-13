BEGIN ~SASAKI~ 74284

IF ~Name("Yoshimo",LastTalkedToBy)~ THEN BEGIN 0
  SAY ~Yoshimo-san, I am glad to see you.~
  IF ~~ THEN EXIT
END

IF ~OR(2) !InPartySlot(LastTalkedToBy,0) !Name("Yoshimo",LastTalkedToBy)~ THEN BEGIN 1
  SAY ~Greetings to you. I am Sasaki.  I am always pleased to meet one of my brother's associates.~
  IF ~~ THEN EXIT
END