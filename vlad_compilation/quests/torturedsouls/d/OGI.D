BEGIN OGI

CHAIN
IF ~Name("Yoshimo",LastTalkedToBy)~ THEN OGI 0
~Yoshimo-san, I want to be an adventurer like you.~
EXIT

CHAIN
IF ~OR(2) !InPartySlot(LastTalkedToBy,0) !Name("Yoshimo",LastTalkedToBy)~ THEN OGI 1
~Greetings to you. I am Ogi.  When I grow up big, I'll be a famous kensai.~
EXIT