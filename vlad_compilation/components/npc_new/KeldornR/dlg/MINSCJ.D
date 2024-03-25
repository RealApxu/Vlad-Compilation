APPEND ~MINSCJ~

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~Minsc and Boo are always ready to do some butt-kicking to evil enemies!~
  IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kr_WarTk
  IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kr_WarTk
END

IF ~~ THEN BEGIN Kelem0
  SAY ~Boo? Boo, do you understand where we are now?~
  IF ~~ THEN REPLY ~Minsc, you are dead. I have accidently killed you... you and Boo, but I have come to correct my mistake. Take Boo my friend and let's be gone from here.~ GOTO Kelem1
  IF ~~ THEN REPLY ~Minsc, you and Boo just happened to be in the wrong place at the wrong time and I killed you. I am sorry, I swear I did not mean it!~ GOTO Kelem1
END

IF ~~ THEN BEGIN Kelem1
  SAY ~Ha-ha! You have also become berserk, like Minsc? Well-well... that's all right, Minsc and Boo are ready to rejoin you!~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
END

END