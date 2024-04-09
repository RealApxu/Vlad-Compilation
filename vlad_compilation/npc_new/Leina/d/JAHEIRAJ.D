APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN NEJ544
  SAY ~If this Govan writes poetry I do not believe that he could have harmed Leina. Such words are seldom written by violent men.~
  IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
  IF ~InParty("njhroth")~ THEN EXTERN NJHROJ 47
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ157
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ259
  IF ~InParty("njdar")~ THEN EXTERN ~DARJ~ 7
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ NEJ185
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ205
  IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ NEJ221
END

END