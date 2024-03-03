APPEND ~KORGANJ~

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