//Fixing Korgan's stutter
REPLACE_STATE_TRIGGER KORGANJ 2
~Global("KorganTomb","GLOBAL",1)
Global("KorganMummy","GLOBAL",0)
!Dead("Mummy03")
See("Mummy03")~

REPLACE_STATE_TRIGGER KORGANJ 28
~Dead("Mummy03")
AreaCheck("AR0802")
Global("TombEmpty","LOCALS",0)~

APPEND ~KORGANJ~

IF ~~ THEN BEGIN NEJ222
  SAY ~If we be travlin' to ruins, we best be showing a profit when we come out, or you, me, an' me axe will be having some words!~
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
END

IF ~~ THEN BEGIN NEJ223
  SAY ~Now that be more like it! Wizards be always storing gold and treasure that needs liberating for m....uh...our use!~
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
END

IF ~~ THEN BEGIN NEJ224
  SAY ~Don�t be such a load of wusses�, �tis only a bloody slab o�meat after all, like a dead cow!~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN firattak
	SAY ~(*Licking his thumb and running it along the edge of his axe�s head*)... Jus getting her ready... in case ye ave an idea to go blowin fire at our backsides as we leave.~
	IF ~True()~ THEN EXTERN ~SHARTJ~ legacy406a
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ firattak
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~VICONIJ~ firattak
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ firattak
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ firattak
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ firattak
	IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ firattak
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ firattak
END

IF ~~ THEN BEGIN tafficuh
  SAY ~Never thought I�d git t�see a gnome bigger than m�self!~
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
END

IF ~~ THEN BEGIN TS222
  SAY ~Re yer gonna stop greasing the floor with yer mumbo-jumbo, stupid woman?~
  IF ~!InParty("Aerie")~ THEN EXTERN ~NAJOKI~ 7
  IF ~InParty("Aerie")
See("Aerie")~ THEN EXTERN ~AERIEJ~ TS219
END

IF ~Global("SPRITE_IS_DEADKiotsi","GLOBAL",1)
Global("Kiotsi_Dead","GLOBAL",0)~ THEN BEGIN TS223
  SAY ~Bah! The fool aren't worth a fight. Bastard.~
  IF ~~ THEN DO ~SetGlobal("Kiotsi_Dead","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~I be a mercenary as ye all know, so I fight beside thems that pays the best. Although... traveling with ye do promise huge trophies! Maybe the dwarf will take yer side in this <CHARNAME>, if ye don't mind.~
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
END

IF ~~ THEN BEGIN Kelem0
  SAY ~The dwarf be dead? That wern't no fair fight yer know.~
	IF ~~ THEN REPLY ~Hey, Korgan! The dark making you morose is it?~ GOTO Kelem1
	IF ~~ THEN REPLY ~Feeling uncomfortable, dwarf? Now you know how those whom you've murdered felt.~ GOTO Kelem1
END

IF ~~ THEN BEGIN Kelem1
  SAY ~Bad jokes ye have, <CHARNAME>!~
	IF ~~ THEN REPLY ~Jokes? You are dead, you old butcher and that is no joke! I killed you... unintentionally yes, but...~ GOTO Kelem2
	IF ~~ THEN REPLY ~I'm not joking, and you will be in no mood for jokes when those whom you butchered find you here. Remember your old group, Korgan?~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem2
  SAY ~Aye, but ye will take me from here, won't ye? Yer Keldorn will miss me. Where be he anyway? Did ye manage to save his hide or be he a gonna too?~
	IF ~~ THEN REPLY ~(Sadly) That I do not know yet, Korgan. Join with me and we will find out.~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem3
  SAY ~Don't ye be doin' that... leaving me here! Me axe served ye well enough in the past and so she will agin in the future. What yer going to be telling yer Keldorn? Ye did save him, didn't ye?~
	IF ~~ THEN REPLY ~(Sadly) Not yet, Korgan. Come with me and we will find him together.~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem4
  SAY ~Good and good. There's gold aplenty to be had together.~
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
END
END