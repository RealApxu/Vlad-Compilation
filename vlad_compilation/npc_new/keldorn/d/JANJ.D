CHAIN JANJ Kr_WarTk
~Ah, war! I really hope that Jansen productions will not suffer. I suppose uncle Gerhard will invent something... and maybe I will be needed to provide the army with our wares.~
END
 IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kr_WarTk
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kr_WarTk

CHAIN JANJ Kelem0
~Hm... strange situation. Uncle Gerhard would figure something out for sure, but alas nothing useful comes to my mind. Who's there? Is that you <CHARNAME>?~
END
 ++ ~Yes, Jan. This is a bad place for you to be, don't you think? If you wish, I can take you from here?~ EXTERN JANJ Kelem1

CHAIN JANJ Kelem1
~A very bad place... a very bad place indeed. Yes please lead me out of here!~
END
 IF ~True()~ THEN EXTERN KELEMVOR 4A
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kelem0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACJ Kelem0
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kelem0
 IF ~InParty("Viconia")~ THEN EXTERN VICONIJ Kelem0