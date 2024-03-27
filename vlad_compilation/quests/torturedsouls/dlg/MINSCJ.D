APPEND ~MINSCJ~

IF ~Global("NPCRemark","GLOBAL",1)~ THEN BEGIN TS241
  SAY ~Boo senses evil in every crack. Ooo! Major butt-kicking is coming!~
  IF ~~ THEN DO ~SetGlobal("NPCRemark","GLOBAL",2)~ EXIT
END

END