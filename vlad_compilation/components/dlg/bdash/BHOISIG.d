REPLACE_TRIGGER_TEXT BHOISIG
~Alignment(Player1,MASK_GENEUTRAL)~
~OR(2)
    Alignment(Player1,MASK_GENEUTRAL)
    Global("VP_OisigGivesQuest","GLOBAL",1)~

ALTER_TRANS BHOISIG // file name
BEGIN 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_OisigGivesQuest","GLOBAL",1)
OpenDoor("DOOR0901")
EscapeAreaMove("AR0901",690,565,2)~
END