APPEND MINSCJ

IF ~~ THEN BEGIN NEJ259
  SAY ~Minsc does not hold with people taking other people to places they do not want to go to. We must free the lady bard and quickly. Evil must be taught a lesson and my sword is a good teacher of lessons to evil.~
  IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
  IF ~InParty("njhroth")~ THEN EXTERN NJHROJ 47
  IF ~InParty("Valygar")~ THEN EXTERN VALYGARJ NEJ157
END

END