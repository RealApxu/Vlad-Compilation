BEGIN ~WATCH7~

IF ~  RandomNum(5,1)
~ THEN BEGIN 0
  SAY ~Hey there kid, nothing to see here.~
  IF ~  !Global("VP_Inside_CK","GLOBAL",1)
~ THEN EXIT
  IF ~  Global("VP_Inside_CK","GLOBAL",1)
~ THEN REPLY ~Please, open the gate.~ GOTO 5
END

IF ~  RandomNum(5,2)
~ THEN BEGIN 1
  SAY ~Thankfully quiet here today, as usual.  I hear there are problems outside, though; something about an iron shortage.~
  IF ~  !Global("VP_Inside_CK","GLOBAL",1)
~ THEN EXIT
  IF ~  Global("VP_Inside_CK","GLOBAL",1)
~ THEN REPLY ~Please, open the gate.~ GOTO 5
END

IF ~  RandomNum(5,3)
~ THEN BEGIN 2
  SAY ~Winthrop has kept his prices as low as he could, but I expect that to change soon.  It's been weeks since a trading caravan has made it here.~
  IF ~  !Global("VP_Inside_CK","GLOBAL",1)
~ THEN EXIT
  IF ~  Global("VP_Inside_CK","GLOBAL",1)
~ THEN REPLY ~Please, open the gate.~ GOTO 5
END

IF ~  RandomNum(5,4)
~ THEN BEGIN 3
  SAY ~It is a good thing we are not called upon to defend Candlekeep more often.  I've a cousin in Nashkel that sent word of an iron shortage that is beginning to cripple their local guards.~
  IF ~  !Global("VP_Inside_CK","GLOBAL",1)
~ THEN EXIT
  IF ~  Global("VP_Inside_CK","GLOBAL",1)
~ THEN REPLY ~Please, open the gate.~ GOTO 5
END

IF ~  RandomNum(5,5)
~ THEN BEGIN 4
  SAY ~I was in one of the great spires of the keep last night, and saw the strangest sight.  The horizon was aglow for a time, as though many a man carried torches in the distance.  Usually there are only merchants on that path, though never at night.  Bandits perhaps, but so many?~
  IF ~  !Global("VP_Inside_CK","GLOBAL",1)
~ THEN EXIT
  IF ~  Global("VP_Inside_CK","GLOBAL",1)
~ THEN REPLY ~Please, open the gate.~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~Sure.~
  IF ~~ THEN DO ~SetGlobal("VP_Inside_CK","GLOBAL",0)
ClearAllActions()
StartCutScene("VPCutCK")
~ EXIT
END
