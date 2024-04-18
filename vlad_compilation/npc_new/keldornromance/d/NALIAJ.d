APPEND NALIAJ

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~We must all help, <CHARNAME>.~
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
END

IF ~~ THEN BEGIN Kelem0
  SAY ~Where am I? It's so cold here, so dreadfully cold!~
  IF ~~ THEN REPLY ~You are dead, Nalia. I have killed you... you have to believe that it was unintentional. Please forgive me dearest Nalia... forgive me!~ GOTO Kelem1
  IF ~~ THEN REPLY ~Nalia, that is a strange question! You are dead yes, but you are not going to let so little a thing upset you are you?~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem1
  SAY ~You have killed me? Ah yes, I remember. You put on the ring of Cyric and it made you insane. I do not blame you, <CHARNAME>, I can see that it was no fault of yours... please take me away from here!~
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
END

IF ~~ THEN BEGIN Kelem2
  SAY ~You have killed me, and you call it a little thing?~
  IF ~~ THEN REPLY ~Nalia... you know how it happened. It was that damned ring of Cyric! Please, I beg of you let us leave this place.~ GOTO Kelem3
  IF ~~ THEN REPLY ~You wanted adventure! You should have learnt to move quicker. The battle field is not a ball-room, it is all *quick quick quick*. There is no time for *quick, quick, slow* you know!~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem3
  SAY ~Yes, let's go.~
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
END

IF ~~ THEN BEGIN Kelem4
  SAY ~What the joke! But... yes. Let's go.~
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
END

END