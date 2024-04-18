CHAIN KORGANJ TS222
~Re yer gonna stop greasing the floor with yer mumbo-jumbo, stupid woman?~
END
 IF ~!InParty("Aerie")~ THEN EXTERN NAJOKI 7
 IF ~InParty("Aerie") See("Aerie")~ THEN EXTERN AERIEJ TS219

CHAIN
IF ~Global("SPRITE_IS_DEADKiotsi","GLOBAL",1) Global("Kiotsi_Dead","GLOBAL",0)~ THEN KORGANJ TS223
~Bah! The fool aren't worth a fight. Bastard.~
DO ~SetGlobal("Kiotsi_Dead","GLOBAL",1)~
EXIT