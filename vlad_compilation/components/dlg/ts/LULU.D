BEGIN ~LULU~ 74285

IF ~Name("Yoshimo",LastTalkedToBy)~ THEN BEGIN 0
  SAY ~Yoshimo-san, I'm happy you've returned home.~
  IF ~True()~ THEN EXIT
END

IF ~OR(2)
!InPartySlot(LastTalkedToBy,0)
!Name("Yoshimo",LastTalkedToBy)~ THEN BEGIN 1
  SAY ~Greetings to you. I am Lulu.  I am always pleased to meet one of my brother's associates.~
  IF ~~ THEN EXIT
END
