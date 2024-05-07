CHAIN KORGANJ Kr_WarTk
~I be a mercenary as ye all know, so I fight beside thems that pays the best. Although... traveling with ye do promise huge trophies! Maybe the dwarf will take yer side in this <CHARNAME>, if ye don't mind.~
END
 IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kr_WarTk
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kr_WarTk
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kr_WarTk
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ Kr_WarTk
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ Kr_WarTk
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZYJ Kr_WarTk
 IF ~InParty("HaerDalis")~ THEN EXTERN HAERDAJ Kr_WarTk

CHAIN KORGANJ Kelem0
~The dwarf be dead? That wern't no fair fight yer know.~
END
 ++ ~Hey, Korgan! The dark making you morose is it?~ EXTERN KORGANJ Kelem1
 ++ ~Feeling uncomfortable, dwarf? Now you know how those whom you've murdered felt.~ EXTERN KORGANJ Kelem1

CHAIN KORGANJ Kelem1
~Bad jokes ye have, <CHARNAME>!~
END
 ++ ~Jokes? You are dead, you old butcher and that is no joke! I killed you... unintentionally yes, but...~ EXTERN KORGANJ Kelem2
 ++ ~I'm not joking, and you will be in no mood for jokes when those whom you butchered find you here. Remember your old group, Korgan?~ EXTERN KORGANJ Kelem3

CHAIN KORGANJ Kelem2
~Aye, but ye will take me from here, won't ye? Yer Keldorn will miss me. Where be he anyway? Did ye manage to save his hide or be he a gonna too?~
END
 ++ ~(Sadly) That I do not know yet, Korgan. Join with me and we will find out.~ EXTERN KORGANJ Kelem4

CHAIN KORGANJ Kelem3
~Don't ye be doin' that... leaving me here! Me axe served ye well enough in the past and so she will agin in the future. What yer going to be telling yer Keldorn? Ye did save him, didn't ye?~
END
 ++ ~(Sadly) Not yet, Korgan. Come with me and we will find him together.~ EXTERN KORGANJ Kelem4

CHAIN KORGANJ Kelem4
~Good and good. There's gold aplenty to be had together.~
END
 IF ~True()~ THEN EXTERN KELEMVOR 4A
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kelem0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACJ Kelem0
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kelem0
 IF ~InParty("Viconia")~ THEN EXTERN VICONIJ Kelem0
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kelem0
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ Kelem0
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ Kelem0
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZYJ Kelem0
 IF ~InParty("HaerDalis")~ THEN EXTERN HAERDAJ Kelem0