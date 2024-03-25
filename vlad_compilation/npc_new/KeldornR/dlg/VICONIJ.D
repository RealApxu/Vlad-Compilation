APPEND ~VICONIJ~

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
  IF ~~ THEN DO ~SetGlobal("VP_Kr_ViccyWarTalk","GLOBAL",4) ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() SetGlobal("KickedOut","LOCALS",1) LeaveParty() EscapeAreaMove("AR0800",496,1090,14)~ EXIT
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
  IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut10")~ EXIT
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

END