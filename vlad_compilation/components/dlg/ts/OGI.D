BEGIN ~OGI~ 74286

IF ~Name("Yoshimo",LastTalkedToBy)~ THEN BEGIN 0
  SAY ~Yoshimo-san, I want to be an adventurer like you.~
  IF ~True()~ THEN EXIT
END

IF ~OR(2) !InPartySlot(LastTalkedToBy,0) !Name("Yoshimo",LastTalkedToBy)~ THEN BEGIN 1
  SAY ~Greetings to you. I am Ogi.  When I grow up big, I'll be a famous kensai.~
  IF ~~ THEN EXIT
END
