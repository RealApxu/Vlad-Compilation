CHAIN VALYGARJ Kr_WarTk
~Ah, I thought my days in the military were done, now I fear I shall also be mobilized.~
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
 IF ~InParty("Nalia")~ THEN EXTERN NALIAJ Kr_WarTk
 IF ~InParty("Aerie")~ THEN EXTERN AERIEJ Kr_WarTk

CHAIN VALYGARJ Kelem0
~Hm, it would appear that I am dead. Well, the hell with it.~
END
 ++ ~Valygar! You died by my hand Valygar! Believe me, I did not mean it... please forgive me.~ EXTERN VALYGARJ Kelem1
 ++ ~The hell with it? Then let it be so.~ EXTERN VALYGARJ Kelem2

CHAIN VALYGARJ Kelem1
~<CHARNAME>? You killed me? Ah, I see... I'm not angry with you. Though I do not approve of foul magic... and look where it has led us to, you could not help yourself. Still, let's forget it and leave this place.~
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
 IF ~InParty("Nalia")~ THEN EXTERN NALIAJ Kelem0
 IF ~InParty("Aerie")~ THEN EXTERN AERIEJ Kelem0

CHAIN VALYGARJ Kelem2
~(Shrugs his shoulders) You killed me, <CHARNAME>. Ah, I see... I'm not angry with you. Though I do not approve of foul magic... and look where it has led us to, you could not help yourself. Still, let's forget it and leave this place.~
END
 IF ~True()~ THEN EXTERN KELEMVOR 14
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
 IF ~InParty("Nalia")~ THEN EXTERN NALIAJ Kelem0
 IF ~InParty("Aerie")~ THEN EXTERN AERIEJ Kelem0