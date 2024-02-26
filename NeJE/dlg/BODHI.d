//_____________________________________________________//
//                                                     //
//    First meeting with Bodhi - NPCs interject        //
//_____________________________________________________//
//                                                     //

EXTEND_BOTTOM BODHI 1
  IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ 4
  IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ bodhi
  IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ 8
  IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 53
END

EXTEND_BOTTOM BODHI 28
  IF ~InParty("Taffic")
!Dead("Taffic")~ THEN DO ~MoveToPointNoInterrupt([648.1028])
UnLock("DOOR12")
OpenDoor("DOOR12")
SetGlobal("BodhiAppear","GLOBAL",2)
SetGlobal("BodhiJob","GLOBAL",1)
SetGlobal("WorkingForBodhi","GLOBAL",1)
EscapeArea()~ EXTERN ~TAFFICJ~ bodhi2
  IF ~InParty("Melora")
!Dead("Melora")~ THEN DO ~MoveToPointNoInterrupt([648.1028])
UnLock("DOOR12")
OpenDoor("DOOR12")
SetGlobal("BodhiAppear","GLOBAL",2)
SetGlobal("BodhiJob","GLOBAL",1)
SetGlobal("WorkingForBodhi","GLOBAL",1)
EscapeArea()~ EXTERN ~MELORAJ~ 5
  IF ~InParty("Dar")
!Dead("Dar")~ THEN DO ~MoveToPointNoInterrupt([648.1028])
UnLock("DOOR12")
OpenDoor("DOOR12")
SetGlobal("BodhiAppear","GLOBAL",2)
SetGlobal("BodhiJob","GLOBAL",1)
SetGlobal("WorkingForBodhi","GLOBAL",1)
EscapeArea()~ EXTERN ~DARJ~ 9
  IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN DO ~MoveToPointNoInterrupt([648.1028])
UnLock("DOOR12")
OpenDoor("DOOR12")
SetGlobal("BodhiAppear","GLOBAL",2)
SetGlobal("BodhiJob","GLOBAL",1)
SetGlobal("WorkingForBodhi","GLOBAL",1)
EscapeArea()~ EXTERN ~HROTHJ~ 54
END

EXTEND_BOTTOM BODHI 21
  IF ~InParty("Melora")
!Dead("Melora")~ THEN DO ~EraseJournalEntry(6601)
EraseJournalEntry(6605)
EraseJournalEntry(6606)
EraseJournalEntry(34188)
EraseJournalEntry(34189)
SetGlobal("BodhiAppear","GLOBAL",3)
EscapeArea()~ SOLVED_JOURNAL #6602 EXTERN ~MELORAJ~ 6
  IF ~InParty("Taffic")
!Dead("Taffic")~ THEN DO ~EraseJournalEntry(6601)
EraseJournalEntry(6605)
EraseJournalEntry(6606)
EraseJournalEntry(34188)
EraseJournalEntry(34189)
SetGlobal("BodhiAppear","GLOBAL",3)
EscapeArea()~ SOLVED_JOURNAL #6602 EXTERN ~TAFFICJ~ bodhi3
  IF ~InParty("Dar")
!Dead("Dar")~ THEN DO ~EraseJournalEntry(6601)
EraseJournalEntry(6605)
EraseJournalEntry(6606)
EraseJournalEntry(34188)
EraseJournalEntry(34189)
SetGlobal("BodhiAppear","GLOBAL",3)
EscapeArea()~ SOLVED_JOURNAL #6602 EXTERN ~DARJ~ 10
  IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN DO ~EraseJournalEntry(6601)
EraseJournalEntry(6605)
EraseJournalEntry(6606)
EraseJournalEntry(34188)
EraseJournalEntry(34189)
SetGlobal("BodhiAppear","GLOBAL",3)
EscapeArea()~ SOLVED_JOURNAL #6602 EXTERN ~HROTHJ~ 55
END

EXTEND_TOP BODHI 45
  IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Valygar")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Viconia")
!IsValidForPartyDialog("Korgan")
Global("VP_ResqueLeina","GLOBAL",8)~ THEN REPLY ~It seems I don't have much choice in this matter. I need to see Armagaran Vulova.~ GOTO 46
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
~AddXPObject(Player1,28500)
AddXPObject(Player2,28500)
AddXPObject(Player3,28500)
AddXPObject(Player4,28500)
AddXPObject(Player5,28500)
AddXPObject(Player6,28500)~

APPEND BODHI
IF WEIGHT #-1 ~Global("BodhiJob","GLOBAL",2)
!Global("WorkingForAran","GLOBAL",1)
Dead("Vulova")
Global("PlantedEvidence","GLOBAL",1)
InParty("Leina")~ THEN BEGIN NEJ135 // from:
  SAY #22111
  IF ~~ THEN DO ~AddXPObject(Player1,28500)
AddXPObject(Player2,28500)
AddXPObject(Player3,28500)
AddXPObject(Player4,28500)
AddXPObject(Player5,28500)
AddXPObject(Player6,28500)~ EXTERN ~LEINAJ~ 25
END

IF WEIGHT #-2 ~Global("BodhiJob","GLOBAL",2)
!Global("WorkingForAran","GLOBAL",1)
!Dead("Vulova")
Global("FailedBodhi2","GLOBAL",1)
InParty("Leina")~ THEN BEGIN NEJ136 // from:
  SAY #22119
  IF ~~ THEN UNSOLVED_JOURNAL #6956 DO ~AddXPObject(Player1,28500)
AddXPObject(Player2,28500)
AddXPObject(Player3,28500)
AddXPObject(Player4,28500)
AddXPObject(Player5,28500)
AddXPObject(Player6,28500)~ EXTERN ~LEINAJ~ 31
END
END