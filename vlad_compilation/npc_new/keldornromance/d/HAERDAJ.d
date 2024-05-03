CHAIN HAERDAJ Kr_WarTk
~War... war is so ugly! I'm a poet, not a warrior, but all the same, I will write and sing ballads of your victories, my raven.~
END
 IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kr_WarTk
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kr_WarTk
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kr_WarTk
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ Kr_WarTk
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ Kr_WarTk
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZYJ Kr_WarTk

CHAIN HAERDAJ Kelem0
~"A guiltless death I die...", what is there next? No, that's not right.~
= ~"Out of the depths I cried out to you!" Again, something not right.~
= ~What's happened to my rhyme? No matter... hm... I wonder if there's an exit to Sigil from here? I feel that the city is somewhere close.~
END
 ++ ~Haer'Dalis!~ EXTERN HAERDAJ Kelem1
 ++ ~(To yourself: That is what I call a bard! He is murdered and yet, he still composes poems. Neither mage, nor fighter, but as strange as it may be, Keldorn seems to respect him.) Ho, Haer'Dalis!~ EXTERN HAERDAJ Kelem1

CHAIN HAERDAJ Kelem1
~Uh? Oh, <CHARNAME>, my angry raven. Can it be that your thread of life has also been severed, but how... how could it happen? Where have you been all this time?~
END
 ++ ~Not exactly my friend, I had to kill myself to leave Baator.~ EXTERN HAERDAJ Kelem2
 ++ ~It does not concern you tiefling... mind your own business.~ EXTERN HAERDAJ Kelem3

CHAIN HAERDAJ Kelem2
~(Opening wide his eyes) Baator! Oh, my raven, do tell me everything and I will write a ballad of your adventures! No mortal has ever succeeded in returning from the circles of hell.~
= ~Ah... how shall I compose poems if... and where shall I sing my ballads? (Covers his face with his hands for a second)~
END
 ++ ~Haer'Dalis, I have come to take you from here, I can return you to life but only if you forgive me for killing you.~ EXTERN HAERDAJ Kelem4
 ++ ~I'm sorry, Haer'Dalis. Of course, I'll tell you all but later, when we have returned and everything is behind us. Do you forgive me?~ EXTERN HAERDAJ Kelem4
 ++ ~(Smirk) A ballad composed by a dead man? That has to be a new trend in art!~ EXTERN HAERDAJ Kelem3

CHAIN HAERDAJ Kelem3
~(Sharply) Why do I need to mind my own business my insidious raven? I am dead and therefore do not have any business to be minding.~
= ~(Ponders) Or is it that I need to beg you for the right to return? That's it, isn't it? That's why you came here? To collect the party murdered by your own hand, you little scavenger!~
END
 ++ ~Please, forgive me Haer'Dalis. I am sorry.~ EXTERN HAERDAJ Kelem4

CHAIN HAERDAJ Kelem4
~Well my little sparrow, friends should not have to settle old scores, so let us be gone lest my rhyme be dead.~
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