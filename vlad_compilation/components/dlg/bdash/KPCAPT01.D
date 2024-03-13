REPLACE_ACTION_TEXT KPCAPT01
~GiveItemCreate("arow08",[PC],20,0,0)~
~GiveItemCreate("arow08",[PC],20,0,0)
SetGlobal("SorcererAratArrows","LOCALS",1)~

ALTER_TRANS KPCAPT01 // file name
BEGIN 49 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~Global("SorcererAratArrows","LOCALS",0)
InParty("Nalia")
!Dead("Nalia")
See("Nalia")~
END

ALTER_TRANS KPCAPT01 // file name
BEGIN 49 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~Global("SorcererAratArrows","LOCALS",0)
OR(3)
!InParty("Nalia")
Dead("Nalia")
!See("Nalia")~
END

EXTEND_BOTTOM KPCAPT01 49
      IF ~Global("SorcererAratArrows","LOCALS",1)~ THEN EXIT
END

REPLACE_STATE_TRIGGER KPCAPT01 50
~!Dead("Torgal")
Global("BridgeOpen","GLOBAL",1)
Global("TrollsDead","LOCALS",0)~