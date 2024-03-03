APPEND ~CERNDJ~

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~With war comes also serious damage to nature. If our aid brings a speedy end to this war then it is our duty to help... balance must be maintained!~
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
END

IF ~~ THEN BEGIN Kr_Curse
  SAY ~I believe Keldorn has been struck by Cyric's curse and he will most certainly die if any attempt is made to remove it. Only the gods themselves in their mercy can revoke the curse.~
  	IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut10")~ EXIT
END

IF ~~ THEN BEGIN Kelem0
  SAY ~Who is here... who is it? Ah, is that you, <CHARNAME>?~
	IF ~~ THEN REPLY ~It is I, Cernd. I hope you will forgive me my mistake? You don't believe that I meant to kill you, do you?~ GOTO Kelem1
	IF ~~ THEN REPLY ~Ah, druid... your wisdom failed you, it did not show you the way! Now all are dead including my sir Keldorn.~ GOTO Kelem1
END

IF ~~ THEN BEGIN Kelem1
  SAY ~No, I don't, but from here on you must strive to maintain balance in yourself, <CHARNAME>.~
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
END
END