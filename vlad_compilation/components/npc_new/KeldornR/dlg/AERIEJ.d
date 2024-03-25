APPEND ~AERIEJ~

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~W-war? Oh, <CHARNAME>, you will still have need of me, won't you? I must go with you!~
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
END

IF ~~ THEN BEGIN Kr_Curse
  SAY ~I believe Keldorn has been struck by Cyric's curse and he will most certainly die if any attempt is made to remove it. Only the gods themselves in their mercy can revoke the curse.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut10")~ EXIT
END

IF ~~ THEN BEGIN Kelem0
  SAY ~W-where am I? Oh my, how did I g-get here? It's so s-scary and so d-dark here. Hello, who... who's there?~
  IF ~~ THEN REPLY ~It is I, Aerie. I have come for you. You do not belong here, you are too young, my sweet girl.~ GOTO Kelem1A
END

IF ~~ THEN BEGIN Kelem1A
  SAY ~S-so I have died. I remember now, perhaps it is for the best <CHARNAME>. No-no, I do not hold it against you, I know you wanted to save Keldorn! You know, if I were you, I would have done the same without hesitation.~
  IF ~~ THEN REPLY ~Come then if you have forgiven me, let's return. I have need of your skills... your power Aerie!~ GOTO Kelem1
  IF ~~ THEN REPLY ~I'm glad you understand me! Let's get out of here... and please, stop crying!~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem1
  SAY ~Power... you consider me powerful? Now I know you are laughing at me!~
  IF ~~ THEN REPLY ~Aerie... Aerie, listen to me! Your power is in your kindness. Yes it's true you can not run fast, but after all, you are used to flying. I can not restore your wings for you Aerie... I am not a god, but I believe that one day, you will find happiness.~ GOTO Kelem3
  IF ~~ THEN REPLY ~What nonsense is this my friend? Would I have taken you from the circus, if I hadn't had faith in you? Come Aerie!~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem2
  SAY ~(Sniffing) Crying? I cry a lot, and do you know, I h-haven't cried all my tears yet... I do not want to irritate you any further. I will stay here.~
  IF ~~ THEN REPLY ~What nonsense is this my friend? Would I have taken you from the circus, if I hadn't had faith in you? Come Aerie!~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem3
  SAY ~(A smile comes to her face) I... I did not know that you valued me so highly. Yes, let us hurry away from here, we must save Keldorn!~
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
  IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kelem0
END

END