APPEND ~VALYGARJ~

IF ~~ THEN BEGIN NEJ157
  SAY ~See the contempt with which this young woman treats this man's heart, she throws scorn on his words and gift? I cannot believe a man would have written such as this if this Leina had not encouraged him in some way. Women are so fickle!~
  IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
  IF ~InParty("njhroth")~ THEN EXTERN NJHROJ 47
END

END