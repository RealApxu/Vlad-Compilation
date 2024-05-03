CHAIN NALIAJ Kr_WarTk
~We must all help, <CHARNAME>.~
END
 IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kr_WarTk
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kr_WarTk
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kr_WarTk
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ Kr_WarTk
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ Kr_WarTk
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZYJ Kr_WarTk
 IF ~InParty("HaerDalis")~ THEN EXTERN HAERDAJ Kr_WarTk
 IF ~InParty("Korgan")~ THEN EXTERN KORGANJ Kr_WarTk
 IF ~InParty("Cernd")~ THEN EXTERN CERNDJ Kr_WarTk

CHAIN NALIAJ Kelem0
~Where am I? It's so cold here, so dreadfully cold!~
END
 ++ ~You are dead, Nalia. I have killed you... you have to believe that it was unintentional. Please forgive me dearest Nalia... forgive me!~ EXTERN NALIAJ Kelem1
 ++ ~Nalia, that is a strange question! You are dead yes, but you are not going to let so little a thing upset you are you?~ EXTERN NALIAJ Kelem2

CHAIN NALIAJ Kelem1
~You have killed me? Ah yes, I remember. You put on the ring of Cyric and it made you insane. I do not blame you, <CHARNAME>, I can see that it was no fault of yours... please take me away from here!~
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
 IF ~InParty("Korgan")~ THEN EXTERN KORGANJ Kelem0
 IF ~InParty("Cernd")~ THEN EXTERN CERNDJ Kelem0

CHAIN NALIAJ Kelem2
~You have killed me, and you call it a little thing?~
END
 ++ ~Nalia... you know how it happened. It was that damned ring of Cyric! Please, I beg of you let us leave this place.~ EXTERN NALIAJ Kelem3
 ++ ~You wanted adventure! You should have learnt to move quicker. The battle field is not a ball-room, it is all *quick quick quick*. There is no time for *quick, quick, slow* you know!~ EXTERN NALIAJ Kelem4

CHAIN NALIAJ Kelem3
~Yes, let's go.~
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
 IF ~InParty("Korgan")~ THEN EXTERN KORGANJ Kelem0
 IF ~InParty("Cernd")~ THEN EXTERN CERNDJ Kelem0

CHAIN NALIAJ Kelem4
~What the joke! But... yes. Let's go.~
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
 IF ~InParty("Korgan")~ THEN EXTERN KORGANJ Kelem0
 IF ~InParty("Cernd")~ THEN EXTERN CERNDJ Kelem0