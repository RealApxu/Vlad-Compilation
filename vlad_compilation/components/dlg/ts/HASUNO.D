BEGIN ~HASUNO~ 74294

IF ~Name("Yoshimo",LastTalkedToBy)~ THEN BEGIN 0
  SAY ~Yosimo-san, do you require my healing potions?~
  IF ~~ THEN DO ~StartStore("Hasuno",LastTalkedToBy)~ EXIT
END

IF ~OR(2) !InPartySlot(LastTalkedToBy,0) !Name("Yoshimo",LastTalkedToBy)~ THEN BEGIN 1
  SAY ~Good day to you. Do you require my healing potions?~
  IF ~~ THEN DO ~StartStore("Hasuno",LastTalkedToBy)~ EXIT
END
