CHAIN MAZZYJ Kr_WarTk
~I will join the troops, <CHARNAME>, that is where my place is.~
END
 IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kr_WarTk
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kr_WarTk
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kr_WarTk
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ Kr_WarTk
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ Kr_WarTk

CHAIN MAZZYJ Kelem0
~How is this? <CHARNAME> has killed me and I could do nothing to prevent it... not even a single scratch did I leave! Oh, Arvoreen, what kind of strength...~
END
 ++ ~Mazzy! Mazzy my dearest friend... can you ever forgive me? I swear I could not control myself!~ EXTERN MAZZYJ Kelem1
 ++ ~Sounds as though she is jealous of me. How nice.~ EXTERN MAZZYJ Kelem2

CHAIN MAZZYJ Kelem1
~Forgive? There's nothing to forgive. You could not help yourself and I would have done the same.~
END
 ++ ~You... you would have put the ring on?~ EXTERN MAZZYJ Kelem3

CHAIN MAZZYJ Kelem2
~Jealous? Oh no. Why do I need strength that is uncontrollable, unpredictable? It's just that I had a chance to ascertain that Gods are truly invincible.~
END
 ++ ~Did you have any doubts?~ EXTERN MAZZYJ Kelem5

CHAIN MAZZYJ Kelem3
~What's the ring got to do with it, <CHARNAME>? If our situations were reversed, I would never have forgiven myself if I had not tried all possible means to save my... my friend.~
END
 ++ ~Mazzy, you are right. How could I have ever doubted you!~ EXTERN MAZZYJ Kelem4

CHAIN MAZZYJ Kelem4
~That said, let us hurry and leave this place!~
END
 IF ~True()~ THEN EXTERN KELEMVOR 4A
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kelem0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACJ Kelem0
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kelem0
 IF ~InParty("Viconia")~ THEN EXTERN VICONIJ Kelem0
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kelem0
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ Kelem0
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ Kelem0

CHAIN MAZZYJ Kelem5
~I was wondering are you going to take me from here or what?~
END
 ++ ~Yes, of course. Come dearest friend Mazzy. We need to save Keldorn.~ EXTERN MAZZYJ Kelem4