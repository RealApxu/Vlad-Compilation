APPEND ~VALYGARJ~

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~Ah, I thought my days in the military were done, now I fear I shall also be mobilized.~
  IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kr_WarTk
  IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kr_WarTk
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kr_WarTk
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kr_WarTk
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kr_WarTk
  IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kr_WarTk
  IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kr_WarTk
  IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kr_WarTk
  IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kr_WarTk
  IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kr_WarTk
END

IF ~~ THEN BEGIN Kelem0
  SAY ~Hm, it would appear that I am dead. Well, the hell with it.~
  IF ~~ THEN REPLY ~Valygar! You died by my hand Valygar! Believe me, I did not mean it... please forgive me.~ GOTO Kelem1
  IF ~~ THEN REPLY ~The hell with it? Then let it be so.~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem1
  SAY ~<CHARNAME>? You killed me? Ah, I see... I'm not angry with you. Though I do not approve of foul magic... and look where it has led us to, you could not help yourself. Still, let's forget it and leave this place.~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kelem0
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kelem0
  IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kelem0
  IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kelem0
  IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kelem0
  IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kelem0
  IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kelem0
END

IF ~~ THEN BEGIN Kelem2
  SAY ~(Shrugs his shoulders) You killed me, <CHARNAME>. Ah, I see... I'm not angry with you. Though I do not approve of foul magic... and look where it has led us to, you could not help yourself. Still, let's forget it and leave this place.~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 14
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kelem0
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kelem0
  IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kelem0
  IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kelem0
  IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kelem0
  IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kelem0
  IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kelem0
END

END