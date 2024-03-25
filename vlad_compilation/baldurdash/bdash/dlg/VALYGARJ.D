REPLACE_STATE_TRIGGER VALYGARJ 25
~Global("ValygarSeesOrb","GLOBAL",1)
!Global("LavokDead","GLOBAL",1)~

REPLACE_STATE_TRIGGER VALYGARJ 107
~Dead("lavok02")
Global("LavokDead","GLOBAL",1)
!Global("ValygarSeesOrb","GLOBAL",1)~

ALTER_TRANS VALYGARJ // file name
BEGIN 107 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("LavokDead","GLOBAL",2)~
END

SET_WEIGHT VALYGARJ 25 #-1
SET_WEIGHT VALYGARJ 107 #-2