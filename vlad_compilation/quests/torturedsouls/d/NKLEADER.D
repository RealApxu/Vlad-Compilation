BEGIN NKLEADER

CHAIN
IF ~NumTimesTalkedTo(0) Global("Samurai_Meeting","GLOBAL",0)~ THEN NKLEADER 0
~Foul heathen! You dare to disturb my meeting on consecrated ground! My guests will not tolerate interruptions! You shall pay for this blasphemy!~
DO ~SetGlobal("Samurai_Meeting","GLOBAL",1) Enemy()~
EXIT