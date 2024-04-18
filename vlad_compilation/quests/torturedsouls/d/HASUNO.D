BEGIN HASUNO

CHAIN
IF ~Name("Yoshimo",LastTalkedToBy)~ THEN HASUNO 0
~Yoshimo-san, do you require my healing potions?~
DO ~StartStore("Hasuno",LastTalkedToBy)~
EXIT

CHAIN
IF ~OR(2) !InPartySlot(LastTalkedToBy,0) !Name("Yoshimo",LastTalkedToBy)~ THEN HASUNO 1
~Good day to you. Do you require my healing potions?~
DO ~StartStore("Hasuno",LastTalkedToBy)~
EXIT