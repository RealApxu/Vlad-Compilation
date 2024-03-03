APPEND ~VICONIJ~

IF ~~ THEN BEGIN NEJ185
  SAY ~The arrogance of the surfacer males is beyond belief to me! Such words would never leave the lips of a drow male unless he was arrogant enough to believe his advances were welcome, he knows to well the punishment that would be visited upon him if they were not!~
  IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
  IF ~InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 47
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ157
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ259
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 7
END

END