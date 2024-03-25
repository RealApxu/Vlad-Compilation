EXTEND_TOP BODHI 45
  IF ~!IsValidForPartyDialog("Minsc") !IsValidForPartyDialog("Valygar") !IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Viconia") !IsValidForPartyDialog("Korgan") Global("VP_ResqueLeina","GLOBAL",8)~ THEN REPLY ~It seems I don't have much choice in this matter. I need to see Armagaran Vulova.~ GOTO 46
END

EXTEND_BOTTOM BODHI 131
  IF ~Global("VP_ResqueLeina","GLOBAL",8)~ THEN REPLY ~It seems I don't have much choice in this matter. I need to see Armagaran Vulova.~ GOTO 46
END

EXTEND_BOTTOM BODHI 132
  IF ~Global("VP_ResqueLeina","GLOBAL",8)~ THEN REPLY ~It seems I don't have much choice in this matter. I need to see Armagaran Vulova.~ GOTO 50
END

//_____________________________________________________//
//                                                     //
//          Leina's reaction on return to Bodhi        //
//_____________________________________________________//
//                                                     //

ADD_STATE_TRIGGER BODHI 61
~!InParty("Leina")~

ADD_STATE_TRIGGER BODHI 63
~!InParty("Leina")~

ADD_TRANS_ACTION BODHI
BEGIN 63 END
BEGIN 0 END
~AddXPObject(Player1,28500) AddXPObject(Player2,28500) AddXPObject(Player3,28500) AddXPObject(Player4,28500) AddXPObject(Player5,28500) AddXPObject(Player6,28500)~

APPEND BODHI

IF WEIGHT #-1 ~Global("BodhiJob","GLOBAL",2) !Global("WorkingForAran","GLOBAL",1) Dead("Vulova") Global("PlantedEvidence","GLOBAL",1) InParty("Leina")~ THEN BEGIN NEJ135 // from:
  SAY #22111
  IF ~~ THEN DO ~AddXPObject(Player1,28500) AddXPObject(Player2,28500) AddXPObject(Player3,28500) AddXPObject(Player4,28500) AddXPObject(Player5,28500) AddXPObject(Player6,28500)~ EXTERN ~LEINAJ~ 25
END

IF WEIGHT #-2 ~Global("BodhiJob","GLOBAL",2) !Global("WorkingForAran","GLOBAL",1) !Dead("Vulova") Global("FailedBodhi2","GLOBAL",1) InParty("Leina")~ THEN BEGIN NEJ136 // from:
  SAY #22119
  IF ~~ THEN UNSOLVED_JOURNAL #6956 DO ~AddXPObject(Player1,28500) AddXPObject(Player2,28500) AddXPObject(Player3,28500) AddXPObject(Player4,28500) AddXPObject(Player5,28500) AddXPObject(Player6,28500)~ EXTERN ~LEINAJ~ 31
END

END