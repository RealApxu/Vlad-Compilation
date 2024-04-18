BEGIN SASAKI

CHAIN
IF ~Name("Yoshimo",LastTalkedToBy)~ THEN SASAKI 0
~Yoshimo-san, I am glad to see you.~
EXIT

CHAIN
IF ~OR(2) !InPartySlot(LastTalkedToBy,0) !Name("Yoshimo",LastTalkedToBy)~ THEN SASAKI 1
~Greetings to you. I am Sasaki. I am always pleased to meet one of my brother's associates.~
EXIT