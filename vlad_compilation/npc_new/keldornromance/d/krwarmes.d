CHAIN
IF ~Global("VP_Kr_TheWar","GLOBAL",2) InParty("Anomen") !Dead("Anomen")~ THEN KRWARMES KRWARM1A
~Sir Keldorn Firecam, sir Anomen Delryn, you are both to proceed to the Headquarters of the Order immediately.~
= ~<CHARNAME>, prelate Wessalen requires you to visit the Headquarters as well.~
DO ~SetGlobal("VP_Kr_TheWar","GLOBAL",3)~
EXTERN KELDORJ War_st0

CHAIN
IF ~Global("VP_Kr_TheWar","GLOBAL",2) OR(2) !InParty("Anomen") Dead("Anomen")~ THEN KRWARMES KRWARM1B
~Sir Keldorn Firecam, you are to proceed to the Headquarters of the Order immediately.~
= ~<CHARNAME>, prelate Wessalen requires you to visit the Headquarters as well.~
DO ~SetGlobal("VP_Kr_TheWar","GLOBAL",3)~
EXTERN KELDORJ War_st0

CHAIN KRWARMES KRWARM2
~War, sir. Amn has declared war on Riatavin.~
EXTERN KELDORJ War_st1