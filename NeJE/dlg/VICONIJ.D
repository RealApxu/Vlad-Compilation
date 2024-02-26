ADD_TRANS_TRIGGER VICONIJ 125
~!InParty("Sime")
See("ppsime")~ DO 0

EXTEND_BOTTOM VICONIJ 125
  IF ~InParty("Sime")~ THEN EXTERN ~SIMEJ~ 20
END

APPEND ~VICONIJ~

IF ~~ THEN BEGIN TS183
  SAY ~Love is for weak-hearted rivvins...~
  IF ~!InParty("Aerie")
!InParty("Korgan")
!InParty("Keldorn")~ THEN EXTERN ~NAJOKI~ 7
  IF ~InParty("Aerie")
See("Aerie")~ THEN EXTERN ~AERIEJ~ TS219
  IF ~!InParty("Aerie")
InParty("Korgan")
See("Korgan")~ THEN EXTERN ~KORGANJ~ TS222
  IF ~!InParty("Aerie")
!InParty("Korgan")
InParty("Keldorn")
See("Keldorn")~ THEN EXTERN ~KELDORJ~ TS253
END

IF WEIGHT #-1 ~Global("VP_Kr_ViccyWarTalk","GLOBAL",1)~ THEN BEGIN Kr_WarTk
  SAY ~(Thoughtfully) I know not what to do. You have saved my life more than once, <CHARNAME>, and I am certain you will find a use for my clerical skills.~
		IF ~~ THEN GOTO Kr_WarT1
END

IF ~~ THEN BEGIN Kr_WarT1
  SAY ~It might be strange for you, more so for your paladin, to hear, but we drow do understand the meaning of duty and I do want to stay with your party, but... I... (she lowers her voice) I fear being recognized should I join this army <CHARNAME>.~
		IF ~~ THEN REPLY ~Viconia! I know your story, and Keldorn is sure to know it too. He will, I am sure, speak on your behalf.~ GOTO Kr_WarT2
  	IF ~~ THEN REPLY ~You are right Viconia. More so because I will not be in command there and therefore I'll not be able to speak on your behalf.~ GOTO Kr_WarT3
END

IF ~~ THEN BEGIN Kr_WarT2
  SAY ~It will only bring trouble to us all. It does not matter what you know or think of me.~
		IF ~~ THEN EXTERN ~KELDORJ~ KRVIWAR1
END

IF ~~ THEN BEGIN Kr_WarT3
  SAY #33986
  	IF ~~ THEN DO ~SetGlobal("VP_Kr_ViccyWarTalk","GLOBAL",4)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0800",496,1090,14)~ EXIT
END

IF ~~ THEN BEGIN Kr_WarT4
  SAY ~Are you saying that you have ceased hating drow, jaluk?~
		IF ~~ THEN EXTERN ~KELDORJ~ KRVIWAR2
END

IF ~~ THEN BEGIN Kr_WarT5
  SAY ~(Casting a quick look at him) As you wish, Keldorn.~
		IF ~~ THEN EXTERN ~KELDORJ~ KRVIWAR3
END

IF ~~ THEN BEGIN Prelate_st0
  SAY ~(Politely) Viconia DeVir, cleric of Shar, yours to command, my lord.~
		IF ~~ THEN EXTERN ~KELDORJ~ Prelate_st1
END

IF ~~ THEN BEGIN Kr_Curse
  SAY ~I believe Keldorn has been struck by Cyric's curse and he will most certainly die if any attempt is made to remove it. Only the gods themselves in their mercy can revoke the curse.~
  	IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut10")~ EXIT
END

IF ~~ THEN BEGIN Kelem0
  SAY ~I am a fool, fool, fool! How come, when I finally have a chance to pay my debts, to recompense all the good things, I let it slip my mind... I... I... cha'kohk ol jal let the demons take me! I wish I had burned away on that bonfire.~
  	IF ~~ THEN REPLY ~Viconia, abbil!~ GOTO Kelem1
  	IF ~~ THEN REPLY ~What? That's the first time I have heard a drow priestess damn herself.~ GOTO Kelem1
END

IF ~~ THEN BEGIN Kelem1
  SAY ~What? Is that you... you heard? You should not have heard my words, nobody should. Leave me be! I know you have come for me, but leave me in peace. I don't want to go with you. The gods do not wish me to live.~
  	IF ~~ THEN REPLY ~Viconia, stop this nonsense. You have nothing to blame yourself for! You can't... there is no way for you to know everything concerning the pantheon of humans. After all, I myself should have guessed about Kelemvor, but we all were too anxious to think straight.~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem3
  SAY ~You do not blame me? I was afraid to ask Shar for aid, but you know how much I... I respect Keldorn. I... let's go, maybe I can help him yet.~
	IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
END

IF ~~ THEN BEGIN NEJ185
  SAY ~The arrogance of the surfacer males is beyond belief to me! Such words would never leave the lips of a drow male unless he was arrogant enough to believe his advances were welcome, he knows to well the punishment that would be visited upon him if they were not!~
  IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
  IF ~InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 47
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ157
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ259
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 7
END

IF ~~ THEN BEGIN NEJ186
  SAY ~I have bad memories of those areas abbil. I had not long arrived on the surface and my life would have been forfeit because of surfacer prejudices if it had not been for you. I owe you twice and will continue with you to this ruin for that reason alone.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 60
  IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ546
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ260
  IF ~InParty("Kachiko")
InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ57
  IF ~InParty("Yoshimo")
InParty("Kachiko")
!Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ152
  IF ~InParty("Kachiko")
!InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ58
  IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ 35
  IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ 7
  IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ 12
  IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ158
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ206
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ321
  IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ252
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ222
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ188
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ185
  IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ310
END

IF ~~ THEN BEGIN NEJ187
  SAY ~You are expecting me to set foot in a school of mages! In Drow society no female would lower herself to do such a thing unless bidden to do so by the priestesses. Magic, fighting and the bedchamber are the only thing males serve any useful purpose in.~
  IF ~~ THEN GOTO NEJ188
END

IF ~~ THEN BEGIN NEJ188
  SAY ~Magic is therefore considered an inferior power in comparison to the power the priestesses wield. The magic schools, being for the male is a lowly place indeed! I will however, for your sake, try to hide my distaste whilst we are at this Halruaa.~
  IF ~True()~ THEN EXTERN ~TILORN~ 19
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ261
  IF ~InParty("Kachiko")
InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ59
  IF ~InParty("Yoshimo")
InParty("Kachiko")
!Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ153
  IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ 36
  IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ 8
  IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ159
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ207
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ322
  IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ253
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ223
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ189
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ189
  IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ311
END

IF ~~ THEN BEGIN firattak
	SAY ~Humph... should such a creature seek to terrorise our cities in the Underdark, no drow warrior would  baulk from his duty to drive it out. You surfacers have no backbone!~
	IF ~True()~ THEN EXTERN ~SHARTJ~ legacy406a
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ firattak
END

IF ~~ THEN BEGIN tafficuh
  SAY ~Ha! See what your male pride has brought you to gnome!~
 IF ~True()~ THEN EXTERN ~TAFFICP~ umberhk3
 IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ tafficuh
 IF ~InParty("Kachiko")
InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ tafficuh
 IF ~InParty("Yoshimo")
InParty("Kachiko")
!Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ tafficuh
 IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ tafficuh
 IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ tafficuh
 IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ tafficuh
 IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ tafficuh
  IF ~InParty("Nalia")
!Dead("Nalia")
OR(2)
Global("EnteredAR1304","GLOBAL",1)
!Global("NaliaKeepPlot","GLOBAL",0)~ THEN EXTERN ~NALIAJ~ tafficuh
 IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ tafficuh
 IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ tafficuh
 IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ tafficuh
 IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ tafficuh
 IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ tafficuh
END
END