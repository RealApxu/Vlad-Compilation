APPEND ~KORGANJ~

IF ~~ THEN BEGIN TS222
  SAY ~Re yer gonna stop greasing the floor with yer mumbo-jumbo, stupid woman?~
  IF ~!InParty("Aerie")~ THEN EXTERN ~NAJOKI~ 7
  IF ~InParty("Aerie")
See("Aerie")~ THEN EXTERN ~AERIEJ~ TS219
END

IF ~Global("SPRITE_IS_DEADKiotsi","GLOBAL",1)
Global("Kiotsi_Dead","GLOBAL",0)~ THEN BEGIN TS223
  SAY ~Bah! The fool aren't worth a fight. Bastard.~
  IF ~~ THEN DO ~SetGlobal("Kiotsi_Dead","GLOBAL",1)~ EXIT
END

END