ALTER_TRANS MAZZYJ // file name
BEGIN 9 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~RevealAreaOnMap("AR2000")
LeaveParty()
SetGlobal("mazzynocure","GLOBAL",1)
EscapeAreaMove("AR2002",341,400,12)~
END

ALTER_TRANS MAZZYJ // file name
BEGIN 103 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("MazzyAltar","GLOBAL",3)
ActionOverride("uhrang01",StartDialogueNoSet([PC]))~
END