CHAIN MINSCJ Kr_WarTk
~Minsc and Boo are always ready to do some butt-kicking to evil enemies!~
END
 IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kr_WarTk
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kr_WarTk
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kr_WarTk


CHAIN MINSCJ Kelem0
~Boo? Boo, do you understand where we are now?~
END
 ++ ~Minsc, you are dead. I have accidently killed you... you and Boo, but I have come to correct my mistake. Take Boo my friend and let's be gone from here.~ EXTERN MINSCJ Kelem1
 ++ ~Minsc, you and Boo just happened to be in the wrong place at the wrong time and I killed you. I am sorry, I swear I did not mean it!~ EXTERN MINSCJ Kelem1


CHAIN MINSCJ Kelem1
~Ha-ha! You have also become berserk, like Minsc? Well-well... that's all right, Minsc and Boo are ready to rejoin you!~
END
 IF ~True()~ THEN EXTERN KELEMVOR 4A
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kelem0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACJ Kelem0
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kelem0
 IF ~InParty("Viconia")~ THEN EXTERN VICONIJ Kelem0
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kelem0