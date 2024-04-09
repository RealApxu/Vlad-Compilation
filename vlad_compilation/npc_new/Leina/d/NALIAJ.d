APPEND ~NALIAJ~

IF ~~ THEN BEGIN NEJ320
  SAY ~I know the name on this letter. He is the son of one of Athkatla's influential families. My father has... did speak of the Duvaine's often, but I have no idea where it is in Athkatla they live.~
  IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
  IF ~InParty("njhroth")~ THEN EXTERN NJHROJ 47
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ157
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ259
  IF ~InParty("njdar")~ THEN EXTERN ~DARJ~ 7
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ NEJ185
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ205
  IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ NEJ221
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ544
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ NEJ56
END

END