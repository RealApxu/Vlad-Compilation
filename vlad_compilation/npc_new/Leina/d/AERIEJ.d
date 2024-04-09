APPEND ~AERIEJ~

IF ~~ THEN BEGIN NEJ221
  SAY ~How could such beautiful words not have touched the heart of this Leina? These are surely the words of a man who, when he loves, he loves with every part of his body and soul. Surely he will want to aid us in finding her.~
  IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
  IF ~InParty("njhroth")~ THEN EXTERN NJHROJ 47
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ157
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ259
  IF ~InParty("njdar")~ THEN EXTERN ~DARJ~ 7
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ NEJ185
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ205
END

END