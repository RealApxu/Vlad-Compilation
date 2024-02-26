BEGIN ~KRWARMES~

IF ~Global("VP_Kr_TheWar","GLOBAL",2)
InParty("Anomen")
!Dead("Anomen")~ THEN BEGIN KRWARM1A
	SAY ~Sir Keldorn Firecam, sir Anomen Delryn, you are both to proceed to the Headquarters of the Order immediately.~
=
~<CHARNAME>, prelate Wessalen requires you to visit the Headquarters as well.~
		IF ~~ THEN DO ~SetGlobal("VP_Kr_TheWar","GLOBAL",3)~ EXTERN ~KELDORJ~ War_st0
END

IF ~Global("VP_Kr_TheWar","GLOBAL",2)
OR(2)
!InParty("Anomen")
Dead("Anomen")~ THEN BEGIN KRWARM1B
	SAY ~Sir Keldorn Firecam, you are to proceed to the Headquarters of the Order immediately.~
=
~<CHARNAME>, prelate Wessalen requires you to visit the Headquarters as well.~
		IF ~~ THEN DO ~SetGlobal("VP_Kr_TheWar","GLOBAL",3)~ EXTERN ~KELDORJ~ War_st0
END

IF ~~ THEN BEGIN KRWARM2
	SAY ~War, sir. Amn has declared war on Riatavin.~
		IF ~~ THEN EXTERN ~KELDORJ~ War_st1
END