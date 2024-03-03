REPLACE_STATE_TRIGGER BVALYGA 65
~InParty("Korgan")
!Dead("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("VP_BanterFix","LOCALS",0)~

ALTER_TRANS BVALYGA // file name
BEGIN 65 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_BanterFix","LOCALS",1)~
END