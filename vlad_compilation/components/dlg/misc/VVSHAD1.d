REPLACE_STATE_TRIGGER VVSHAD1 0 ~Global("HareisFlee","GLOBAL",1) OR(2) Global("WorkingForBodhi","GLOBAL",1) Global("VP_Guild_Attacked","GLOBAL",1)~

REPLACE_STATE_TRIGGER VVSHAD1 1 ~Global("HareisFlee","GLOBAL",1) Global("VP_Guild_Attacked","GLOBAL",0)~

REPLACE_STATE_TRIGGER VVSHAD1 2 ~Global("HareisFlee","GLOBAL",1) Global("WorkingForAran","GLOBAL",1) Global("VP_Guild_Attacked","GLOBAL",0)~

ALTER_TRANS VVSHAD1 // file name
BEGIN 0 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~ActionOverride("vvshad3",Enemy()) ActionOverride("vvshad2",Enemy()) Enemy()~
END

ALTER_TRANS VVSHAD1 // file name
BEGIN 1 2 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~ActionOverride("vvshad3",EscapeArea()) ActionOverride("vvshad2",EscapeArea()) EscapeArea()~
END

SET_WEIGHT VVSHAD1 0 #0
SET_WEIGHT VVSHAD1 1 #2
SET_WEIGHT VVSHAD1 2 #1