EXTEND_BOTTOM MINSCP 8
  IF ~OR(3)
Global("VP_In_IWD_Part1","GLOBAL",1)
Global("VP_InHalruaa","GLOBAL",1)
Global("VP_OnIsland","GLOBAL",1)~ THEN REPLY ~Minsc, we are in a distant land, and you won’t find your way back, so please stay here. We’ll come back later if we need your help.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~Global("VP_IN_BG1","GLOBAL",1)~ THEN REPLY ~No, I think you should go.~ GOTO 16
END