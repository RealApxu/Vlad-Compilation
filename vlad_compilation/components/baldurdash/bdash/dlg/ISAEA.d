ADD_TRANS_TRIGGER ISAEA 18 ~InParty("Nalia")~ DO 0

EXTEND_BOTTOM ISAEA 18
  IF ~!InParty("Nalia")~ THEN GOTO 19
END

ALTER_TRANS NALIAP // file name
BEGIN 14 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("RoenalConvict","GLOBAL",2)
JoinParty()~
END

ADD_TRANS_ACTION NALIAP
BEGIN 15 END
BEGIN 0 END
~SetGlobal("RoenalConvict","GLOBAL",2)~