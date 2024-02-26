EXTEND_BOTTOM HGWRA01 18
  IF ~!Global("SimeRomanceActive","GLOBAL",0)
!Global("SimeRomanceActive","GLOBAL",3)
InParty("Sime")
!Dead("Sime")
OR(4)
Global("ValygarRomanceActive","GLOBAL",0)
Global("ValygarRomanceActive","GLOBAL",3)
!InParty("Valygar")
Dead("Valygar")~ THEN GOTO TS29
	IF ~!Global("VP_KrRomanceActive","GLOBAL",3)
!Global("VP_KrRomanceActive","GLOBAL",0)
InParty("Keldorn")
!Dead("Keldorn")~ THEN GOTO KR0
END

EXTEND_BOTTOM HGWRA01 24
  IF ~Global("LovedOne","GLOBAL",5)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut218f5")~ EXIT
  IF ~Global("LovedOne","GLOBAL",6)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut218f6")~ EXIT
  IF ~Global("VP_Kr_LovedOne","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut218kr")~ EXIT
END

APPEND ~HGWRA01~

IF ~~ THEN BEGIN TS29
  SAY ~What of the inevitable pain you must give to the one you love? This Linvail maid?~
  IF ~~ THEN DO ~SetGlobal("LovedOne","GLOBAL",6)~ EXTERN ~SIMEJ~ TSTOB0
END

IF ~~ THEN BEGIN KR0
  SAY ~What of the inevitable pain you must give to the one you love? This desperate paladin?~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_LovedOne","GLOBAL",1)~ EXTERN ~KELDO25J~ LoveOne0
END
END