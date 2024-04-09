APPEND ~JANJ~

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~Ah, war! I really hope that Jansen productions will not suffer. I suppose uncle Gerhard will invent something... and maybe I will be needed to provide the army with our wares.~
  IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kr_WarTk
END

IF ~~ THEN BEGIN Kelem0
  SAY ~Hm... strange situation. Uncle Gerhard would figure something out for sure, but alas nothing useful comes to my mind. Who's there? Is that you <CHARNAME>?~
  IF ~~ THEN REPLY ~Yes, Jan. This is a bad place for you to be, don't you think? If you wish, I can take you from here?~ GOTO Kelem1
END

IF ~~ THEN BEGIN Kelem1
  SAY ~A very bad place... a very bad place indeed. Yes please lead me out of here!~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kelem0
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
END

END