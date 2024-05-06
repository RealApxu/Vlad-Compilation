//Disabling Block 148
REPLACE_STATE_TRIGGER NALIAJ 148
~~

REPLACE_STATE_TRIGGER NALIAJ 0
~AreaCheck("AR1300")
Global("EnteredAR1300","GLOBAL",0)
Global("VP_NaliaDialogFix","GLOBAL",1)~

REPLACE_STATE_TRIGGER NALIAJ 53
~Dead("Torgal")
Global("NaliaKeepPlot","GLOBAL",0)
AreaCheck("AR1300")
Global("NaliaRaised","GLOBAL",0)
Global("VP_NaliaDialogFix2","GLOBAL",1)~

REPLACE_STATE_TRIGGER NALIAJ 223
~Dead("Torgal")
Global("TorgalDies","LOCALS",0)
Global("VP_NaliaQuestFix","GLOBAL",1)~

ALTER_TRANS NALIAJ // file name
BEGIN 95 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("NaliaGraveComplain","GLOBAL",2)
GivePartyAllEquipment()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("NaliaWentToFuneral","GLOBAL",1)
SetGlobalTimer("NaliaReturnsFromFuneral","GLOBAL",ONE_DAY)
LeaveParty()
EscapeArea()~
END

ALTER_TRANS NALIAJ // file name
BEGIN 165 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("PCKeepOwner","GLOBAL",1)
RevealAreaOnMap("AR1304")
HideAreaOnMap("AR1300")
StartCutSceneMode()
StartCutScene("Cut32aN")~
END

ALTER_TRANS NALIAJ // file name
BEGIN 191 END // state number (can be more than one)
BEGIN 0 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "TRIGGER" ~~
END

ALTER_TRANS NALIAJ // file name
BEGIN 191 END // state number (can be more than one)
BEGIN 2 3 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "TRIGGER" ~False()~
END