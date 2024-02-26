REPLACE ~VVARKAN~

IF ~Global("VP_Guild_Attacked","GLOBAL",0)
Global("PlayerAttackedAran","GLOBAL",0)~ THEN BEGIN 0
  SAY ~At them, lads! We'll not let these worthless scags take away our night!~
  IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN GOTO 1
  IF ~Global("WorkingForBodhi","GLOBAL",0)
Global("WorkingForAran","GLOBAL",0)~ THEN GOTO 2
  IF ~Global("WorkingForAran","GLOBAL",1)~ THEN GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY ~There! More of that damnable Bodhi's goons! The fight is falling out of our favor! Fall back, fall back to the guild and we will prepare for another day!~
  IF ~~ THEN DO ~SetGlobal("AranFleeVamp","GLOBAL",1)
ActionOverride("VVRYOKOI",EscapeArea())
ActionOverride("VVCAT",EscapeArea())
EscapeArea()~ EXIT
END

IF ~OR(2)
Global("VP_Guild_Attacked","GLOBAL",1)
Global("PlayerAttackedAran","GLOBAL",1)~ THEN BEGIN 4
  SAY ~You damnable fool! I would rid these creatures from our streets for the safety of us all! You've tipped the balance, so deal with the monsters yourselves! Retreat!~
  IF ~~ THEN DO ~SetGlobal("AranFleeVamp","GLOBAL",1)
ActionOverride("VVRYOKOI",EscapeArea())
ActionOverride("VVCAT",EscapeArea())
EscapeArea()~ EXIT
END
END
