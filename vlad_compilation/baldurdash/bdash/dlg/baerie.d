REPLACE_ACTION_TEXT BAERIE ~SetGlobal("BAerie4","LOCALS",0)~ ~SetGlobal("BAerie4","LOCALS",1)~
//state #25

REPLACE_STATE_TRIGGER BAERIE 44
~InParty("Jan")
See("Jan")
!Dead("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("VP_BanterFix1","LOCALS",0)~

ALTER_TRANS BAERIE // file name
BEGIN 44 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("VP_BanterFix1","LOCALS",1)~
END

REPLACE_STATE_TRIGGER BAERIE 76
~InParty("Minsc")
See("Minsc")
!Dead("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
AreaType(FOREST)
Global("VP_BanterFix2","LOCALS",0)~

ALTER_TRANS BAERIE // file name
BEGIN 76 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("VP_BanterFix2","LOCALS",1)~
END