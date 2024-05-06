ADD_TRANS_ACTION BVICONI
BEGIN 27 END
BEGIN 1 END
~SetGlobal("BViconia12","LOCALS",1)~

REPLACE_STATE_TRIGGER BVICONI 103
~Global("LoveTalk","LOCALS",46)~

ALTER_TRANS BVICONI // file name
BEGIN 103 END // state number (can be more than one)
BEGIN 0 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "TRIGGER" ~~
END

ALTER_TRANS BVICONI // file name
BEGIN 103 END // state number (can be more than one)
BEGIN 0 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~~
END

ALTER_TRANS BVICONI // file name
BEGIN 103 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "EPILOGUE" ~GOTO 367~
END

ALTER_TRANS BVICONI // file name
BEGIN 103 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "EPILOGUE" ~GOTO 368~
END

SET_WEIGHT BVICONI 103 #22

REPLACE_STATE_TRIGGER BVICONI 7
~InParty("Mazzy")
!Dead("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("VP_BanterFix1","LOCALS",0)~

ALTER_TRANS BVICONI // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("VP_BanterFix1","LOCALS",1)~
END

REPLACE_STATE_TRIGGER BVICONI 8
~InParty("Yoshimo")
!Dead("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("VP_BanterFix2","LOCALS",0)~

ALTER_TRANS BVICONI // file name
BEGIN 8 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("VP_BanterFix2","LOCALS",1)~
END

REPLACE_STATE_TRIGGER BVICONI 24
~InParty("Jan")
!Dead("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("VP_BanterFix3","LOCALS",0)~

ALTER_TRANS BVICONI // file name
BEGIN 24 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("VP_BanterFix3","LOCALS",1)~
END