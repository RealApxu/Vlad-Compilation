BEGIN SIEGEMES

CHAIN
IF ~Global("VP_Kr_Casle_Siege","GLOBAL",3)~ THEN SIEGEMES 1
~Your Grace! The castle is under siege! A large group of Sythillisians approached the castle from the south. You must come to the gate immediatly!~
DO ~SetGlobal("VP_Kr_Casle_Siege","GLOBAL",4)~
EXTERN KELDORJ siege