//Disabling Block 148
REPLACE_STATE_TRIGGER NALIAJ 148
~~

REPLACE_STATE_TRIGGER NALIAJ 0
~AreaCheck("AR1300")
Global("EnteredAR1300","GLOBAL",0)
Global("VP_NaliaDialogFix","GLOBAL",1)~

REPLACE_STATE_TRIGGER NALIAJ 53
~Dead("Torgal")
Global("NaliaKeepPlot","GLOBAL",0)
AreaCheck("AR1300")
Global("NaliaRaised","GLOBAL",0)
Global("VP_NaliaDialogFix2","GLOBAL",1)~

REPLACE_STATE_TRIGGER NALIAJ 223
~Dead("Torgal")
Global("TorgalDies","LOCALS",0)
Global("VP_NaliaQuestFix","GLOBAL",1)~

ALTER_TRANS NALIAJ // file name
BEGIN 95 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("NaliaGraveComplain","GLOBAL",2)
GivePartyAllEquipment()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("NaliaWentToFuneral","GLOBAL",1)
SetGlobalTimer("NaliaReturnsFromFuneral","GLOBAL",ONE_DAY)
LeaveParty()
EscapeArea()~
END

ALTER_TRANS NALIAJ // file name
BEGIN 165 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("PCKeepOwner","GLOBAL",1)
RevealAreaOnMap("AR1304")
HideAreaOnMap("AR1300")
StartCutSceneMode()
StartCutScene("Cut32aN")~
END

ALTER_TRANS NALIAJ // file name
BEGIN 191 END // state number (can be more than one)
BEGIN 0 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~~
END

ALTER_TRANS NALIAJ // file name
BEGIN 191 END // state number (can be more than one)
BEGIN 2 3 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~False()~
END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN NEJ320
  SAY ~I know the name on this letter. He is the son of one of Athkatla's influential families. My father has... did speak of the Duvaine's often, but I have no idea where it is in Athkatla they live.~
  IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
  IF ~InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 47
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ157
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ259
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 7
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ NEJ185
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ205
  IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ NEJ221
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ544
  IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ56
END

IF ~~ THEN BEGIN NEJ321
  SAY ~I fail to see how visiting a ruin is helping the needy of Athkatla! Still I suppose there must needy people everywhere looking for aid, we may be of some help to someone on our journey to this Ulcaster.~
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
END

IF ~~ THEN BEGIN NEJ322
  SAY ~A wizards academy. No matter that this one is in the past, I just never dreamt I would get to see such a place!~
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
END

IF ~~ THEN BEGIN NEJ323
  SAY ~I'm glad to be of help.~
  IF ~~ THEN DO ~SetGlobal("VP_Nalia_EnchQuest","GLOBAL",1)~ EXTERN ~XANH~ 23
END

IF ~~ THEN BEGIN NEJ324
  SAY ~If we had the time I would like nothing better than to learn from a master, but they are specialists and I doubt they would tutor a mage generalist.~
  IF ~~ THEN EXTERN ~XANH~ 37
END

IF ~~ THEN BEGIN NEJ325
  SAY ~I'm glad to be of help.~
  IF ~~ THEN DO ~SetGlobal("VP_Nalia_AbjQuest","GLOBAL",1)~ EXTERN ~TUPHIN~ 7
END

IF ~~ THEN BEGIN NEJ326
  SAY ~I'm glad to be of help.~
  IF ~~ THEN DO ~SetGlobal("VP_Nalia_InvQuest","GLOBAL",1)~ EXTERN ~TUTHEOD~ 26
END

IF ~~ THEN BEGIN NEJ327
  SAY ~I'm glad to be of help.~
  IF ~~ THEN DO ~SetGlobal("VP_Nalia_InvQuest","GLOBAL",1)~ EXTERN ~TUTHEOD~ 29
END

IF ~~ THEN BEGIN NEJ328
  SAY ~I'm glad to be of help.~
  IF ~~ THEN DO ~SetGlobal("VP_Nalia_IllQuest","GLOBAL",1)~ EXTERN ~TUVASHON~ 17
END

IF ~~ THEN BEGIN NEJ329
  SAY ~At last a chance to do more.~
  IF ~~ THEN DO ~SetGlobal("VP_Nalia_ConQuest","GLOBAL",1)~ EXTERN ~TUMORD~ 15
END

IF ~~ THEN BEGIN NEJ330
  SAY ~Sorry, but I truly thought I was capable of more.~
  IF ~~ THEN REPLY ~Do we need an intelligence check or something here? All you had to do was to read a couple of scrolls... you can read can't you?~ GOTO NEJ331
  IF ~!Class(Player1,MAGE_ALL)~ THEN REPLY ~I don't understand a lot about magic but surely it has to be easier to read scrolls then trying to remember spells that have been memorised?~ GOTO NEJ331
END

IF ~~ THEN BEGIN NEJ331
  SAY ~Magic can be very unpredictable whether it's read from parchment or a memorised spell. It takes but the slightest wrong move by a finger, a miss pronunciation of a word and the spell will lost or worse altered and the results are as I have said unpredictable.~
  IF ~~ THEN DO ~ActionOverride("TuMord",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN NEJ332
  SAY ~I always hoped to be given the chance to do more.~
  IF ~~ THEN DO ~SetGlobal("VP_Nalia_TraQuest","GLOBAL",1)~ EXTERN ~TUMALV~ 18
END

IF ~~ THEN BEGIN NEJ333
  SAY ~Dead is dead! He will never come back so what does it matter?~
	IF ~True()~ THEN EXIT
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ224
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ200
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ166
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ312
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ255
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ 70
	IF ~InParty("Sime")
!Dead("Sime")~ THEN EXTERN ~SIMEJ~ NEJ119
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ199
END

IF ~~ THEN BEGIN abjurer2
  SAY ~I got it wrong, sorry, <CHARNAME>.~
  IF ~~ THEN REPLY ~You call yourself a mage? Thanks to your incompetence, girl, we have lost some valuable prizes.~ GOTO abjurer3
  IF ~~ THEN REPLY ~It happens, we win some we lose some, I am sure you gave it your best shot.~ GOTO abjurer4
END

IF ~~ THEN BEGIN abjurer3
  SAY ~That's unfair! Let me remind you that you can't lose what you never had.~
  IF ~~ THEN EXTERN ~TUPHIN~ npcfail
END
	
IF ~~ THEN BEGIN abjurer4
  SAY ~You're very gracious, <CHARNAME>.~
  IF ~~ THEN EXTERN ~TUPHIN~ npcfail
END

IF ~~ THEN BEGIN tranfail
  SAY ~I got it wrong, sorry, <CHARNAME>.~
  IF ~~ THEN REPLY ~You failed, a simple kill the monster and open the chest task! It isn't as if you haven't done it before.~ GOTO tranfai2
  IF ~~ THEN REPLY ~It's not that important. What is important is that Malvolio got you out safely.~ GOTO tranfai3
END

IF ~~ THEN BEGIN tranfai2
  SAY ~The last time, if I recall correctly, <CHARNAME>, I had some muscle to back me up and that situation wasn't dependent solely on magic.~
  IF ~~ THEN EXTERN ~TUMALV~ 24
END

IF ~~ THEN BEGIN tranfai3
  SAY ~Thank you for that, <CHARNAME>, but I am still disappointed that I didn't do better.~
  IF ~~ THEN EXTERN ~TUMALV~ 24
END

IF ~~ THEN BEGIN invfail
  SAY ~I got it wrong, sorry <CHARNAME>.~
  IF ~~ THEN REPLY ~That was abysmal! With all the spells you have at your disposal, I can not believe that you couldn't take care of a few pesky pests!~ GOTO invfail2
  IF ~~ THEN REPLY ~It happens. I was probably expecting too much letting you go into a situation you hadn't been given time to prepare for.~GOTO invfail3
END

IF ~~ THEN BEGIN invfail2
  SAY ~It was an unfair test <CHARNAME>, using me as an exterminator and not telling me the extent of the infestation. I did the best I could under such circumstances.~
  IF ~~ THEN EXTERN ~TUTHEOD~ failtest
END

IF ~~ THEN BEGIN invfail3
  SAY ~How many fights give us time to prepare <CHARNAME>? There are only so many situations a mage can handle on her own and then only if she has a wide enough selection of spells at her disposal.~
  IF ~~ THEN EXTERN ~TUTHEOD~ failtest
END

IF ~~ THEN BEGIN tafficuh
  SAY ~I... I cannot look at you Taffic without remembering that it was creatures such as you have become that helped the trolls burrow into my home and brought about the death of my father.~
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
END

IF ~~ THEN BEGIN vashon
  SAY ~I am sorry, I know that I should have been able to have done more.~
  IF ~~ THEN REPLY ~If I had a gold piece for each time I heard sorry for an excuse, I would be rich beyond your imaginings. Sorry is never an excuse for failure.~ GOTO vashon3
  IF ~~ THEN REPLY ~No matter, you couldn't have second guessed Vashon's test, no one could... not even if you'd been a diviner.~ GOTO vashon4
END

IF ~~ THEN BEGIN vashon3
  SAY ~See at as you like. It was not an excuse, it was an apology for no reason other than me feeling badly over letting you down.~
  IF ~~ THEN EXTERN ~TUVASHON~ npcfail
END
	
IF ~~ THEN BEGIN vashon4
  SAY ~Still, a mage should always try to be prepared for the unknown element in any situation she must face. I will remember that in future.~
  IF ~~ THEN EXTERN ~TUVASHON~ npcfail
END

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~We must all help, <CHARNAME>.~
  	IF ~True()~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut04")~ EXIT
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kr_WarTk
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kr_WarTk
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kr_WarTk
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kr_WarTk
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kr_WarTk
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kr_WarTk
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kr_WarTk
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kr_WarTk
END

IF ~~ THEN BEGIN Kelem0
  SAY ~Where am I? It's so cold here, so dreadfully cold!~
	IF ~~ THEN REPLY ~You are dead, Nalia. I have killed you... you have to believe that it was unintentional. Please forgive me dearest Nalia... forgive me!~ GOTO Kelem1
	IF ~~ THEN REPLY ~Nalia, that is a strange question! You are dead yes, but you are not going to let so little a thing upset you are you?~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem1
  SAY ~You have killed me? Ah yes, I remember. You put on the ring of Cyric and it made you insane. I do not blame you, <CHARNAME>, I can see that it was no fault of yours... please take me away from here!~
	IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  	IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kelem0
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kelem0
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kelem0
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kelem0
END

IF ~~ THEN BEGIN Kelem2
  SAY ~You have killed me, and you call it a little thing?~
	IF ~~ THEN REPLY ~Nalia... you know how it happened. It was that damned ring of Cyric! Please, I beg of you let us leave this place.~ GOTO Kelem3
	IF ~~ THEN REPLY ~You wanted adventure! You should have learnt to move quicker. The battle field is not a ball-room, it is all *quick quick quick*. There is no time for *quick, quick, slow* you know!~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem3
  SAY ~Yes, let's go.~
	IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  	IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kelem0
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kelem0
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kelem0
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kelem0
END

IF ~~ THEN BEGIN Kelem4
  SAY ~What the joke! But... yes. Let's go.~
	IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  	IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kelem0
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kelem0
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kelem0
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kelem0
END
END