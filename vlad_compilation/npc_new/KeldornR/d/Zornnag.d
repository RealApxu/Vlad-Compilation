BEGIN ~ZORNNAG~

IF ~Global("VP_Kr_CyricPlot","GLOBAL",2)~ THEN BEGIN 0
  SAY ~Damn! We must capture the castle. It is very important strategically.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",3)~ EXTERN ~PRCYRIC~ 0
END

IF ~~ THEN BEGIN 1
  SAY ~That's because its defences are expertly organized you fool! I wish I knew who their commander is.~
  IF ~~ THEN EXTERN ~PRCYRIC~ 1
END

IF ~~ THEN BEGIN 2
  SAY ~Ah, so he is in charge is he... he has more battle experience than me! Priest, do something!~
  IF ~~ THEN EXTERN ~PRCYRIC~ 2
END

IF ~~ THEN BEGIN 3
  SAY ~So do it in a way that doesn't cause an uprising! Do something. Deprive him of his ability to command. Do I have to think of everything!~
  IF ~~ THEN EXTERN ~PRCYRIC~ 3
END