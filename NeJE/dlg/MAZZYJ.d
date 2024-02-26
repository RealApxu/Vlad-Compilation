ALTER_TRANS MAZZYJ // file name
BEGIN 9 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~RevealAreaOnMap("AR2000")
LeaveParty()
SetGlobal("mazzynocure","GLOBAL",1)
EscapeAreaMove("AR2002",341,400,12)~
END

ALTER_TRANS MAZZYJ // file name
BEGIN 103 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("MazzyAltar","GLOBAL",3)
ActionOverride("uhrang01",StartDialogueNoSet([PC]))~
END

APPEND ~MAZZYJ~

IF ~~ THEN BEGIN NEJ205
  SAY ~We should find this Govan and tell him of Leina's disappearance. If he loves her as deeply as his words imply, he will be distraught at such news and will surely know how to go about a search of this city.~
  IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
  IF ~InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 47
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ157
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ259
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 7
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ NEJ185
END

IF ~~ THEN BEGIN NEJ206
  SAY ~I have sworn to help you find your Imoen, <CHARNAME>, and Mazzy Fenton does not go back on her word. If you travel to Ulcaster, then so do I my friend.~
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
END

IF ~~ THEN BEGIN NEJ207
  SAY ~This is a wondrous thing to be able to do. To travel to the past and undo what has already come to pass! (*sighs*) Oh Patrick, if only...~
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
END

IF ~~ THEN BEGIN tafficuh
  SAY ~My friend, why could you not have been content? Being small is no disgrace, by deed alone it is possible to become 10ft. tall in the eyes of others.~
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
END

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~I will join the troops, <CHARNAME>, that is where my place is.~
  	IF ~True()~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut04")~ EXIT
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kr_WarTk
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kr_WarTk
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kr_WarTk
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kr_WarTk
END

IF ~~ THEN BEGIN Kelem0
  SAY ~How is this? <CHARNAME> has killed me and I could do nothing to prevent it...  not even a single scratch did I leave! Oh, Arvoreen, what kind of strength...~
  	IF ~~ THEN REPLY ~Mazzy! Mazzy my dearest friend... can you ever forgive me? I swear I could not control myself!~ GOTO Kelem1
  	IF ~~ THEN REPLY ~Sounds as though she is jealous of me. How nice.~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem1
  SAY ~Forgive? There's nothing to forgive. You could not help yourself and I would have done the same.~
  	IF ~~ THEN REPLY ~You... you would have put the ring on?~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem2
  SAY ~Jealous? Oh no. Why do I need strength that is uncontrollable, unpredictable? It's just that I had a chance to ascertain that Gods are truly invincible.~
  	IF ~~ THEN REPLY ~Did you have any doubts?~ GOTO Kelem5
END

IF ~~ THEN BEGIN Kelem3
  SAY ~What's the ring got to do with it, <CHARNAME>? If our situations were reversed, I would never have forgiven myself if I had not tried all possible means to save my... my friend.~
  	IF ~~ THEN REPLY ~Mazzy, you are right. How could I have ever doubted you!~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem4
  SAY ~That said, let us hurry and leave this place!~
	IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  	IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
END

IF ~~ THEN BEGIN Kelem5
  SAY ~I was wondering are you going to take me from here or what?~
  	IF ~~ THEN REPLY ~Yes, of course. Come dearest friend Mazzy. We need to save Keldorn.~ GOTO Kelem4
END
END