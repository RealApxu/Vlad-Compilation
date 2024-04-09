APPEND ~MAZZYJ~

IF ~~ THEN BEGIN NEJ205
  SAY ~We should find this Govan and tell him of Leina's disappearance. If he loves her as deeply as his words imply, he will be distraught at such news and will surely know how to go about a search of this city.~
  IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
  IF ~InParty("njhroth")~ THEN EXTERN NJHROJ 47
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ157
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ259
  IF ~InParty("njdar")~ THEN EXTERN ~DARJ~ 7
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ NEJ185
END

END