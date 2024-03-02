ALTER_TRANS BANOME25 // file name
BEGIN 83 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~
END