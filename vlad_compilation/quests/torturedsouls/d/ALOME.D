BEGIN ALOME

CHAIN
IF ~NumberOfTimesTalkedTo(0) See("Yoshimo")~ THEN ALOME 0
~Yoshimo, Yoshimo!~
EXTERN YOSHJ TS184

CHAIN ALOME 1
~No... Do you?~
EXTERN YOSHJ TS185

CHAIN ALOME 2
~They all went to play hide and seek in the caves. They did not take you too? They always say I am too small, but you look big enough. Why won't they let you play?~
EXTERN YOSHJ TS186

CHAIN ALOME 3
~I do not know where the caves are... But my mummy she'd know. She sent me to go ask you to come see her if you want to save Kachiko from bad fate. Who is Kachiko?~
EXTERN YOSHJ TS187

CHAIN ALOME 4
~If she is nice, how can bad fate get her? Mummy says that bad fate grabs only bad people.~
EXTERN YOSHJ TS188

CHAIN ALOME 5
~I guess, no. Mummy asked me to give you this rope, and said that you must be very quiet....~
DO ~GiveItemCreate("Pitrope",Player1,0,0,0) EscapeArea()~
EXIT