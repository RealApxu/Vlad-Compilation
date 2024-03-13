APPEND ~MAZZYJ~

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~I will join the troops, <CHARNAME>, that is where my place is.~
  IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kr_WarTk
  IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kr_WarTk
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kr_WarTk
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kr_WarTk
END

IF ~~ THEN BEGIN Kelem0
  SAY ~How is this? <CHARNAME> has killed me and I could do nothing to prevent it...  not even a single scratch did I leave! Oh, Arvoreen, what kind of strength...~
  IF ~~ THEN REPLY ~Mazzy! Mazzy my dearest friend... can you ever forgive me? I swear I could not control myself!~ GOTO Kelem1
  IF ~~ THEN REPLY ~Sounds as though she is jealous of me. How nice.~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem1
  SAY ~Forgive? There's nothing to forgive. You could not help yourself and I would have done the same.~
  IF ~~ THEN REPLY ~You... you would have put the ring on?~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem2
  SAY ~Jealous? Oh no. Why do I need strength that is uncontrollable, unpredictable? It's just that I had a chance to ascertain that Gods are truly invincible.~
  IF ~~ THEN REPLY ~Did you have any doubts?~ GOTO Kelem5
END

IF ~~ THEN BEGIN Kelem3
  SAY ~What's the ring got to do with it, <CHARNAME>? If our situations were reversed, I would never have forgiven myself if I had not tried all possible means to save my... my friend.~
  IF ~~ THEN REPLY ~Mazzy, you are right. How could I have ever doubted you!~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem4
  SAY ~That said, let us hurry and leave this place!~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
END

IF ~~ THEN BEGIN Kelem5
  SAY ~I was wondering are you going to take me from here or what?~
  IF ~~ THEN REPLY ~Yes, of course. Come dearest friend Mazzy. We need to save Keldorn.~ GOTO Kelem4
END

END