BEGIN ~KDMESS~

IF ~Global("VP_Kr_CyricPlot","GLOBAL",3)~ THEN BEGIN 0
	SAY ~I was nearby... I saw everything, m'lady. A spell... a spell was cast upon him. Please, you must take care of lord Keldorn and we will take care of the defences.~
		IF ~!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Cernd")
!Class(Player1,CLERIC_ALL)
!Class(Player1,PALADIN_ALL)
!Class(Player1,CLERIC_THIEF)
!Class(Player1,CLERIC_MAGE)
!Class(Player1,FIGHTER_CLERIC)
!Class(Player1,FIGHTER_MAGE_CLERIC)
!Class(Player1,DRUID_ALL)~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut10")~ EXIT
		IF ~IfValidForPartyDialogue("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kr_Curse
		IF ~!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Viconia")~ THEN EXTERN ~VICONIJ~ Kr_Curse
		IF ~!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Aerie")~ THEN EXTERN ~AERIEJ~ Kr_Curse
		IF ~!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Anomen")~ THEN EXTERN ~ANOMENJ~ Kr_Curse
		IF ~!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Cernd")~ THEN EXTERN ~CERNDJ~ Kr_Curse
		IF ~!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Cernd")
IfValidForPartyDialogue("Sime")~ THEN EXTERN ~SIMEJ~ Kr_Curse
		IF ~!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Sime")
	OR(7)
		Class(Player1,CLERIC_ALL)
		Class(Player1,PALADIN_ALL)
		Class(Player1,CLERIC_THIEF)
		Class(Player1,CLERIC_MAGE)
		Class(Player1,FIGHTER_CLERIC)
		Class(Player1,FIGHTER_MAGE_CLERIC)
		Class(Player1,DRUID_ALL)~ THEN REPLY ~I believe Keldorn has been struck by Cyric's curse and he will most certainly die if any attempt is made to remove it. Only the gods themselves in their mercy can revoke the curse.~ DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut10")~ EXIT
END

APPEND ~SIMEJ~

IF ~~ THEN BEGIN Kr_Curse
  SAY ~I believe Keldorn has been struck by Cyric's curse and he will most certainly die if any attempt is made to remove it. Only the gods themselves in their mercy can revoke the curse.~
  	IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut10")~ EXIT
END
END