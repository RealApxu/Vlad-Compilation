SET_WEIGHT LAVOK 27 #3
SET_WEIGHT LAVOK 28 #4
SET_WEIGHT LAVOK 57 #5
SET_WEIGHT LAVOK 53 #5

REPLACE_STATE_TRIGGER LAVOK 27
~Global("LavokOutside","GLOBAL",1)
!Class(Player1,MAGE_ALL)~

ALTER_TRANS LAVOK // file name
BEGIN 27 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_SphereTalk","GLOBAL",1)
EraseJournalEntry(6509)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)
EraseJournalEntry(3422)
EraseJournalEntry(6557)
EraseJournalEntry(7241)
EraseJournalEntry(9705)
EraseJournalEntry(9919)
EraseJournalEntry(10047)
EraseJournalEntry(23551)
DestroyItem("MINHP1")
Kill(Myself)~
END

//Block 28 is the only one now triggering
REPLACE_STATE_TRIGGER LAVOK 28
~Global("LavokOutside","GLOBAL",1)
Class(Player1,MAGE_ALL)~

//Moving DestroyItem("MINHP1") to the end of the block
//Removing SetGlobal("PlayerHasStronghold","GLOBAL",1) to enable another stronghold for the dual- or multi-class mages
ALTER_TRANS LAVOK // file name
BEGIN 30 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_SphereTalk","GLOBAL",1)
SetGlobal("PCSphere","GLOBAL",1)
EraseJournalEntry(6509)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)
EraseJournalEntry(3422)
EraseJournalEntry(6557)
EraseJournalEntry(7241)
EraseJournalEntry(9705)
EraseJournalEntry(9919)
EraseJournalEntry(10047)
EraseJournalEntry(23551)
DestroyItem("MINHP1")
Kill(Myself)~
END

//Removing DestroyItem(MINHP1) to prevent sudden death of Lavok, although MINHP1 is an incorrect argument for this function
ALTER_TRANS LAVOK // file name
BEGIN 58 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~StartCutSceneMode()
FadeToColor([30.0],0)
Wait(1)
ActionOverride(Player1,Wait(1))
ActionOverride(Player2,Wait(1))
ActionOverride(Player3,Wait(1))
ActionOverride(Player4,Wait(1))
ActionOverride(Player5,Wait(1))
ActionOverride(Player6,Wait(1))
ActionOverride(Player1,LeaveAreaLUAPanic("AR0400","",[251.694],4))
ActionOverride(Player1,LeaveAreaLUA("AR0400","",[251.694],4))
ActionOverride(Player2,LeaveAreaLUA("AR0400","",[270.743],4))
ActionOverride(Player3,LeaveAreaLUA("AR0400","",[200.701],4))
ActionOverride(Player4,LeaveAreaLUA("AR0400","",[238.740],2))
ActionOverride(Player5,LeaveAreaLUA("AR0400","",[371.659],2))
ActionOverride(Player6,LeaveAreaLUA("AR0400","",[436.621],2))
SetGlobal("LavokOutside","GLOBAL",1)
MultiplayerSync()
EndCutSceneMode()
MoveBetweenAreas("AR0400",[319.680],0)~
END

//If to enable Sphere for all classes, see STATE 59

//Moving DestroyItem("MINHP1") to the end of the block
ALTER_TRANS LAVOK // file name
BEGIN 60 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_SphereTalk","GLOBAL",1)
SetGlobal("PCSphere","GLOBAL",1)
EraseJournalEntry(6509)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)
EraseJournalEntry(3422)
EraseJournalEntry(6557)
EraseJournalEntry(7241)
EraseJournalEntry(9705)
EraseJournalEntry(9919)
EraseJournalEntry(10047)
EraseJournalEntry(23551)
DestroyItem("MINHP1")
Kill(Myself)~
END

//Removing the repetitive block
//Removing SetGlobal("PlayerHasStronghold","GLOBAL",1) to enable another stronghold for the dual- or multi-class mages
ALTER_TRANS LAVOK // file name
BEGIN 62 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~~
END