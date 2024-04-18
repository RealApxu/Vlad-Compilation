BEGIN LULU

CHAIN
IF ~Name("Yoshimo",LastTalkedToBy)~ THEN LULU 0
~Yoshimo-san, I'm happy you've returned home.~
EXIT

CHAIN
IF ~OR(2) !InPartySlot(LastTalkedToBy,0) !Name("Yoshimo",LastTalkedToBy)~ THEN LULU 1
~Greetings to you. I am Lulu.  I am always pleased to meet one of my brother's associates.~
EXIT