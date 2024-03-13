BEGIN ~ALOME~

IF ~NumberOfTimesTalkedTo(0) See("Yoshimo")~ THEN BEGIN 0
  SAY ~Yoshimo, Yoshimo!~
  IF ~~ THEN EXTERN ~YOSHJ~ TS184
END

IF ~~ THEN BEGIN 1
  SAY ~No... Do you?~
  IF ~~ THEN EXTERN ~YOSHJ~ TS185
END

IF ~~ THEN BEGIN 2
  SAY ~They all went to play hide and seek in the caves. They did not take you too? They always say I am too small, but you look big enough. Why won't they let you play?~
  IF ~~ THEN EXTERN ~YOSHJ~ TS186
END

IF ~~ THEN BEGIN 3
  SAY ~I do not know where the caves are... But my mummy she'd know. She sent me to go ask you to come see her if you want to save Kachiko from bad fate. Who is Kachiko?~
  IF ~~ THEN EXTERN ~YOSHJ~ TS187
END

IF ~~ THEN BEGIN 4
  SAY ~If she is nice, how can bad fate get her? Mummy says that bad fate grabs only bad people.~
  IF ~~ THEN EXTERN ~YOSHJ~ TS188
END

IF ~~ THEN BEGIN 5
  SAY ~I guess, no. Mummy asked me to give you this rope, and said that you must be very quiet....~
  IF ~~ THEN DO ~GiveItemCreate("Pitrope",Player1,0,0,0) EscapeArea()~ EXIT
END