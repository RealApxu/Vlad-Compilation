CHAIN JAHEIRAJ Kr_WarTk
~<CHARNAME>, we must help... we can not leave our friends to face such danger!~
END
 IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kr_WarTk
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kr_WarTk
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kr_WarTk
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ Kr_WarTk

CHAIN JAHEIRAJ Kr_Curse
~I believe Keldorn has been struck by Cyric's curse and he will most certainly die if any attempt is made to remove it. Only the gods themselves in their mercy can revoke the curse.~
DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut10")~
EXIT

CHAIN JAHEIRAJ Kelem0
~I... I am dead. I can be reunited with my Khalid and be with him forever. I can rest at last... but how can I rest, I have not carried out Gorion's instructions, I have not protected <CHARNAME> well enough, I left her...~
END
 ++ ~Jaheira! Jaheira, please, forgive me!~ EXTERN JAHEIRAJ Kelem0A

CHAIN JAHEIRAJ Kelem0A
~Who's calling me? Ah, it is you. Why are you disturbing me? What are you doing here? What do you need of me? You are not dead also, are you?~
END
 ++ ~I have come to beg your forgiveness. You were my friend, my elder sister, my protector. You became the mother to me that I never knew, and I have paid you with beggarly thanks! Because of me you lost your husband, your friends, and now I have killed you too! Oh, Jaheira, I need you so badly!~ EXTERN JAHEIRAJ Kelem1
 ++ ~I have come to beg your forgiveness... I come to ask you to return. Jaheira, it is so hard for me to be alone, to be without you. You promised Gorion to take care of me, to teach me sense, to guide me. I need your guidance, please, you must return to me.~ EXTERN JAHEIRAJ Kelem2
 ++ ~What are you doing here, Jaheira? Your place is among the living, not here among the shadows. I killed you accidentally, I was not myself at the time! Forgive me, you know that it is this damned taint that is to blame. You know what I feel for you. Please, please Jaheira, come back to me!~ EXTERN JAHEIRAJ Kelem3

CHAIN JAHEIRAJ Kelem1
~<CHARNAME>, I always believed that you looked upon as nothing more than a governess, as an annoying mentor, and now you are calling me friend, sister... mother even, this surprises me my girl. You know that I am also very attached to you. Do you remember how first we met?~
END
 ++ ~(With a smile) I do. You and Khalid were waiting for me in the inn and you took turns sleeping for fear you would miss me.~ EXTERN JAHEIRAJ Kelem4
 ++ ~I do. Imoen and I... we were bitten by wolves, and barely alive when we finally got to you. You were waiting for us in the inn's hall.~ EXTERN JAHEIRAJ Kelem5
 ++ ~I remember everything, Jaheira, everything. Our meeting in the "Friendly Arm", the conversation about the need to go to Nashkel.~ EXTERN JAHEIRAJ Kelem5

CHAIN JAHEIRAJ Kelem4
~Yes. You truly remember, you have forgotten nothing. I will come with you.~
END
 IF ~True()~ THEN EXTERN KELEMVOR 4A
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kelem0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACJ Kelem0
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kelem0
 IF ~InParty("Viconia")~ THEN EXTERN VICONIJ Kelem0
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kelem0
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ Kelem0

CHAIN JAHEIRAJ Kelem2
~I must? Yes, I am obliged to Gorion. Khalid and I promised him we'd look after you. Do you remember our first meeting, <CHARNAME>?~
END
 ++ ~We were to meet at the inn.~ EXTERN JAHEIRAJ Kelem5
 ++ ~Was there something special about that meeting?~ EXTERN JAHEIRAJ Kelem5
 ++ ~Yes... oh yes. I remember! You told me that you and Khalid took turns sleeping for fear you would miss me.~ EXTERN JAHEIRAJ Kelem4

CHAIN JAHEIRAJ Kelem5
~Khalid feared that we would miss you.~
END
 ++ ~Yes, that is why you took turns sleeping!~ EXTERN JAHEIRAJ Kelem4

CHAIN JAHEIRAJ Kelem3
~Accidentally? I do not think so. Your taint got the better of you, and now you have no more need of me.~
END
 ++ ~That is not true. I do need you Jaheira! It was that damn ring, it deprived me of my senses. Please Jaheira, I had to do something to try to save Keldorn. I could not let him die!~ EXTERN JAHEIRAJ Kelem7
 ++ ~Don't' you know me? If not you, then who knows me better? Remember how we met? How you and Khalid were watching for me and took turns sleeping?~ EXTERN JAHEIRAJ Kelem4

CHAIN JAHEIRAJ Kelem7
~(Smiling) What is this? Has my girl fallen in love? Of course I will not leave you now, let us leave together.~
END
 IF ~True()~ THEN EXTERN KELEMVOR 4A
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kelem0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACJ Kelem0
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kelem0
 IF ~InParty("Viconia")~ THEN EXTERN VICONIJ Kelem0
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kelem0
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ Kelem0