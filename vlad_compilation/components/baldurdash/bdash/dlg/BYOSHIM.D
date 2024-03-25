REPLACE_STATE_TRIGGER BYOSHIM 71
~InParty("Minsc")
!Dead("Minsc")
See("Minsc")
HPLT("Minsc",20)
!StateCheck("Minsc",STATE_SLEEPING)
CombatCounter(0)
Global("BYoshimo13","LOCALS",1)~

REPLACE_STATE_TRIGGER BYOSHIM 0
~InParty("Aerie")
!Dead("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("VP_BanterFix","LOCALS",2)~

ALTER_TRANS BYOSHIM // file name
BEGIN 0 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_BanterFix","LOCALS",3)~
END